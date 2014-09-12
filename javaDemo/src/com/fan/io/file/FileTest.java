package com.fan.io.file;

import java.io.File;
import java.io.IOException;

import org.junit.Test;

public class FileTest {

	@Test
	public void test1() {
		String filename = "/Users/fan/mygit/java/javaDemo";
		File file = new File(filename);
//		createDir(file, true);
		System.out.println(file.length());
	}
	
	@Test
	/*
	 * 使用构造方法 File(File parent, String childname);
	 */
	public void test2() {
		File parent = new File("/Users/fan/parentdir");
		File child = new File(parent, "child");
		
		try {
			if (!parent.exists()) {
				parent.mkdir();
				child.createNewFile();
			}  else {
				if (parent.isDirectory()) {
					child.createNewFile();
				} else {
					System.out.println("父级不是目录, 不能在下面创建文件");
				}
			}
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	/*
	 * 移动文件/文件夹
	 */
	public boolean removeFile(File file, String newname) {
		boolean result = false;
		File newfile = new File(newname);
		result = file.renameTo(newfile);
		if (result) {
			System.out.println("移动成功");
		} else {
			System.out.println("移动失败");
		}
		return result;
	}
	
	/*
	 * 重命名文件
	 */
	public boolean renameFile(File file, String newname) {
		boolean result = false;
		
		File newfile = new File(newname);
		result = file.renameTo(newfile);
		if (result) {
			System.out.println("重命名成功");
		} else {
			System.out.println("重命名失败");
		}
		return result;
	}
	
	/*
	 * 删除文件, 递归删除
	 */
	public boolean deleteFile(File file) {
		System.out.println(file.getName());
		boolean result = false;
		if (file.isDirectory()) {
			File[] files = file.listFiles();
			if (files.length > 0) {
				for (File f:files) {
					deleteFile(f);
				}
			}
		}
		result = file.delete();
		System.out.print("文件 " + file.getPath() + " ");
		if (result) {
			System.out.println("删除成功");
		} else {
			System.out.println("删除失败");
		}
		return result;
	}
	
	/*
	 * 创建目录
	 */
	public boolean createDir(File file) {
		return createDir(file, false);
	}
	
	/*
	 * 强制创建目录, 会生成目录所需的所有父级目录
	 */
	public boolean createDir(File file, Boolean force) {
		Boolean result = false;
		
		if (force) {
			result = file.mkdirs();
		} else {
			result = file.mkdir();
		}
		if (result) {
			System.out.println("创建成功");
		} else {
			System.out.println("创建失败");
		}
		return result;
	}
	
	/*
	 * 创建文件
	 */
	public boolean createFile(File file) {
		
		boolean result = false;
		try {
			if (file.exists()) {
				System.out.println("文件已经存在");
				result = false;
			} else {
				result = file.createNewFile();
				if (result) {
					System.out.println("创建成功");
				} else {
					System.out.println("创建失败");
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		} 
		return result;
	}
	
	private String getSize(long l) {
		long size = l/2014;
		String unit = "kb";
		
		if (size/1024 >= 1) {
			size = size/1024;
			unit = "Mb";
		}
		return size + unit;
	}
}
