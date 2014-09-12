package cn.m15.app.android.gotransfer.net.ipmsg2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.channels.FileChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;

import android.util.Log;
import cn.m15.app.android.gotransfer.Const;
import cn.m15.app.android.gotransfer.enity.TransferFile;
import cn.m15.app.android.gotransfer.net.ipmsg2.MessageConst.Command;
import cn.m15.app.android.gotransfer.net.ipmsg2.MessageConst.FileStatus;
import cn.m15.app.android.gotransfer.net.ipmsg2.MessageConst.TcpMessageConst;
import cn.m15.app.android.gotransfer.utils.FileUtil;

public class TcpFileSendHandler extends BaseTcpFileTransfer {
	private static final String TAG = "TcpFileSendHandler";
	
	private final Object LOCK = new Object();
	
	private long packetNo;
	private Selector selector;
	private SocketChannel socketChannel;
	private TcpFileTransferListener listener;
	
	private FileSendThread fileSendThread;
	private String sendingFilePath; // 请求发送的文件(夹)路径
	
	private long totalSizeOfDir; // 文件夹大小
	private long sendedSizeOfDir;// 已发送文件夹的字节数
	
	private int sendedFileIndex; // 已发送文件数目
	private int sendedFileTotalCount; // 发送文件的总数目
	
	private int sendedFileOfDirIndex; // 已发送文件夹内的文件数目
	private int sendedFileOfDirTotalCount; // 文件夹内的文件总数目
	
	private volatile boolean sendable = true;
	
	public TcpFileSendHandler(long packetNo, Selector selector, SocketChannel sc, int sendedFileTotalCount, 
			TcpFileTransferListener listener) {
		this.packetNo = packetNo;
		this.selector = selector;
		this.socketChannel = sc;
		this.sendedFileTotalCount = sendedFileTotalCount;
		this.listener = listener;
	}
	
	public void handleReceive() {
		synchronized (LOCK) {
			try {
				receiveMessage(socketChannel);	
				socketChannel.register(selector, SelectionKey.OP_WRITE);
			} catch(IOException e) {
				e.printStackTrace();
				closeConnectionWithClient(socketChannel, true);
			}
		}
	}
	
	public void handleSend() {
		synchronized (LOCK) {
			if (fileSendThread == null && sendable) {
				fileSendThread = new FileSendThread();
				THREAD_POOL.execute(fileSendThread);
			}
		}
	}
	
	private class FileSendThread implements Runnable {
		
		@Override
		public void run() {
			synchronized (LOCK) {
				try {
					Log.e(TAG, "server >>> start send file: " + sendingFilePath);
					sendResponseSendFileOrDirMessage(socketChannel);
					if (!sendable) { // 若sendable为false，则发送"取消传输"消息，并关闭连接
						String messageStr = TcpMessageFractory.createCancelTransferMsg(null);
						sendMessage(socketChannel, TcpMessageConst.DATA_TYPE_COMMAND, messageStr.getBytes(Const.USEDCHARACTORSET));
						SelectionKey key = socketChannel.keyFor(selector);
						if (key != null) {
							key.cancel();							
						}
						socketChannel.close();
						Log.e(TAG, "server >>> send cancel message: " + messageStr);
					}
					// 如果程序已进入上面的if判断，那么这一行肯定会抛出ClosedChannelException
					// 所以程序会调用closeConnectionWithClient()
					socketChannel.register(selector, SelectionKey.OP_READ);
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
					closeConnectionWithClient(socketChannel, true);
				}
			}
		}
	}
	
	/*
	 * 回应发送文件(夹)请求或发送文件
	 */
	private void sendResponseSendFileOrDirMessage(SocketChannel sc) 
			throws UnsupportedEncodingException, IOException {
		if (sendingFilePath != null && sendingFilePath.length() > 0) {
			// 回应文件传输之前，判断请求发送的文件是否存在
			File sendedFile = new File(sendingFilePath);
			int fileStatus = FileStatus.NORMAL;
			if (!sendedFile.exists()) {
				fileStatus = FileStatus.NOT_EXSIT;
				if (listener != null) {
					listener.onSendedFileNotExist(packetNo, sendedFile.getAbsolutePath());
				}
			}
			// 回应"发送文件(夹)请求"
			String messageStr = null;
			ArrayList<TransferFile> dirFileList = null;
			if (sendedFile.isDirectory()) { // 若请求发送的文件是否是文件夹,则获取文件夹的文件列表
				dirFileList = new ArrayList<TransferFile>();
				FileUtil.fetchFileListInDir(dirFileList, sendedFile);
				sendedFileOfDirTotalCount = dirFileList.size();
				messageStr = TcpMessageFractory.createResponseSendDirMsg(dirFileList);								
			} else {
				messageStr = TcpMessageFractory.createResponseSendFileMsg(sendingFilePath, null, sendedFile.length(), fileStatus);
			}
			if (!sendable) return; 
			sendMessage(sc, TcpMessageConst.DATA_TYPE_COMMAND, messageStr.getBytes(Const.USEDCHARACTORSET));
			Log.e(TAG, "server >>> send to client: " + messageStr);
			// 如果文件存在则开始发送文件
			if (fileStatus != FileStatus.NOT_EXSIT) {
				if (dirFileList != null) {
					sendDir(sc, sendedFile, dirFileList);
				} else {
					sendedSizeOfDir = 0;
					totalSizeOfDir = 0;
					sendFile(sc, sendedFile, false);									
				}
			} else {
				sendedFileIndex++;
			}
			
			Log.e(TAG, "sendFileIndex:" + sendedFileIndex + 
					", sendedFileTotalCount:" + sendedFileTotalCount + ", " +
					listener);
			if (sendedFileIndex == sendedFileTotalCount) { // 传输完成
				if (listener != null) {
					closeConnectionWithClient(sc, false);
					listener.onFileSendFinish(packetNo);
				}
			}
			sendingFilePath = null;
		}
	}

	public void sendDir(SocketChannel sc, File sendedDir, ArrayList<TransferFile> dirFileList) 
			throws UnsupportedEncodingException, IOException {
		if (dirFileList.size() > 0) {
			sendedSizeOfDir = 0;
			for (TransferFile file : dirFileList) {
				totalSizeOfDir += file.size;						
			}
			
			// 发送第1个文件，不需要"回应文件请求"，第一个文件一定是存在的
			TransferFile firstFile = dirFileList.remove(0);
			sendFile(sc, new File(firstFile.path), true);
			// 发送第2-N个文件，发送之前需要"回应文件请求"
			for (TransferFile otherFile : dirFileList) {
				File sendedFile = new File(otherFile.path);
				int fileStatus = FileStatus.NORMAL;
				if (!sendedFile.exists()) {
					fileStatus = FileStatus.NOT_EXSIT;
				}
				String messageStr = TcpMessageFractory.createResponseSendFileMsg(
						otherFile.path, sendedDir.getAbsolutePath(), sendedFile.length(), fileStatus);
				if (!sendable) return;  
				sendMessage(sc, TcpMessageConst.DATA_TYPE_COMMAND, messageStr.getBytes(Const.USEDCHARACTORSET));
				if (fileStatus != FileStatus.NOT_EXSIT) {
					sendFile(sc, sendedFile, true);									
				} else {
					sendedFileOfDirIndex++;
				}
			}
		}
	}
	
	public void sendFile(SocketChannel sc, File sendedFile, boolean isInDir) {
		FileInputStream fin = null;
		FileChannel fc = null;
		long sendedSize = 0;
		long totalSize = sendedFile.length();
		int perSendSize = TcpMessageConst.PACKET_MAX_LENGTH - TcpMessageConst.PACKET_HRED_LENGTH;
		try {
			fin = new FileInputStream(sendedFile);
			fc = fin.getChannel();
			// 发送文件
			while (totalSize - sendedSize > perSendSize) {
				sendedSize = sendFileData(sc, fc, sendedSize, totalSize, perSendSize);
				if (sendedSize == -1) return; 
			}	
			int remaining = (int) (totalSize - sendedSize);
			if (remaining > 0) {
				sendedSize = sendFileData(sc, fc, sendedSize, totalSize, remaining);
				if (sendedSize == -1) return;
			}
			
			if (!isInDir) {
				sendedFileIndex++;	
			} else {
				sendedFileOfDirIndex++;
				if (sendedFileOfDirIndex == sendedFileOfDirTotalCount) {
					sendedFileIndex++;
					sendedFileOfDirIndex = 0;
					sendedFileOfDirTotalCount = 0;
				}
			}
			
			Log.e(TAG, "server >>> sended finish: " +sendedFile.getAbsolutePath());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (fin != null) {
				try {
					fin.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (fc != null) {
				try {
					fc.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	private long sendFileData(SocketChannel sc, FileChannel fc, long sendedSize, long totalSize, int dataLength) {
		if (!sendable) return -1;
		try {
			int dataLengthTemp = dataLength;
			// 发送包头
			sendMessageHeader(sc, TcpMessageConst.DATA_TYPE_DATA, dataLength);
			// 发送数据
			long transferSize = 0;
			boolean tryAgain = true;
			while (tryAgain) {
				try {
					transferSize = fc.transferTo(sendedSize, dataLength, sc);
					if (transferSize == dataLength) {
						tryAgain = false;
					}
					sendedSize += transferSize;
					dataLength -= transferSize;
					transferSize = 0;
				} catch (IOException e) {
					// 发送文件数据的错误在此处理
					if(!"sendfile failed: EAGAIN (Try again)".equals(e.getMessage())){
						try {
							// 对方取消或被动关闭连接，首先读取取消消息，读取反-1则对方已经关闭连接 
							receiveMessage(sc);
						} catch (IOException e1) {
							e1.printStackTrace();
							closeConnectionWithClient(sc, true);
						}
					}
				}
			}
			sendedSize += transferSize;

			if (totalSizeOfDir > 0) {
				sendedSizeOfDir += dataLengthTemp;
				if (listener != null) {
					listener.onSendFileProgress(packetNo, sendingFilePath, sendedSizeOfDir, totalSizeOfDir);
				}
				Log.e(TAG, "send directory precent >>> " + sendedSizeOfDir + ","
						+ totalSizeOfDir + "," + (100.0*sendedSizeOfDir/totalSizeOfDir));
			} else {
				if (listener != null) {
					listener.onSendFileProgress(packetNo, sendingFilePath, sendedSize, totalSize);
				}
				Log.e(TAG, "send file precent >>> " + (100.0*sendedSize/totalSize));
			}
			
			return sendedSize;
		} catch (IOException e) {
			// 发送文件数据头的错误在这里处理
			Log.e(TAG, "send File data head >>> " + e.getMessage());
			try {
				receiveMessage(sc);
			} catch (IOException e1) {
				e1.printStackTrace();
				closeConnectionWithClient(sc, true);
			}
		}
		return -1;
	}

	/**
	 * 何时被调用：<br/>
	 * 	1) handleReceive()抛出异常时<br/>
	 * 	2) FileSendThread#run()，也是handleSend()时<br/>
	 * 	3) sendFileData()<br/>
	 */
	private void closeConnectionWithClient(SocketChannel sc, boolean canListen) {
		SelectionKey key = sc.keyFor(selector);
		if (key != null) {
			key.cancel();
		}
		
		if (sc.isOpen()) {
			try {
				sc.close();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			
			if (listener != null && canListen) {
				listener.onCloseConnectionWithClient(packetNo);
			}
			
			Log.e(TAG, "close connection with client: " + sc);
		}
	}
	
	@Override
	public void onReceivedCommand(SocketChannel sc, byte[] data) throws UnsupportedEncodingException {
		String messageStr = new String(data, Const.USEDCHARACTORSET);
		Log.e(TAG, "server >>> receive data: " + messageStr);
		TcpMessage message = TcpMessageFractory.parseMessage(messageStr);
		int version = message.getVersion();
		if (version == MessageConst.VERSION) { // 比较协议版本号，以便将来保持兼容
			if (message.commandNo ==  Command.REQUEST_SEND_FILE) {  // 请求发送文件
				sendingFilePath = message.filePath;
				// remainingSendedFileList = null;
				fileSendThread = null;
			} else if (message.commandNo ==  Command.REQUEST_SEND_DIR) { // 请求发送文件夹
				sendingFilePath = message.filePath;
				// remainingSendedFileList = message.fileList;
				fileSendThread = null;
			} else if (message.commandNo ==  Command.CANCEL_TRANSFER) { // 取消单文件(夹)/整次传输
				if (message.filePath == null || message.filePath.length() == 0) {
					closeConnectionWithClient(sc, false);
					if (listener != null) {
						listener.onCancelledByPeer(packetNo);
					}
				}
			} else if (message.commandNo ==  Command.PAUSE_RECEIVE) { // 暂停单文件(夹)/整次传输
			}
		}
	}
	
	@Override
	public void onReceivedData(SocketChannel sc, int dataLength) {
		// 发送方不需要处理接收文件
		// do nothing
	}
	
	public void cancelSendFile() {
		sendable = false;
		Log.e(TAG, "server >>> cancel send file");
	}
}