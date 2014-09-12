package com.fan.io.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import org.junit.Test;

public class FileStreamTest {
	/*
	 * 读取文件
	 */
//	@Test
	public void test1() throws IOException {
		File file = new File("/Users/fan/1.txt");
		if (!file.exists()) {
			file.createNewFile();
		}
		FileInputStream input = new FileInputStream(file);
		
		byte[] buf = new byte[(int)file.length()];
		input.read(buf);
		input.close();
	}
	
	/*
	 * 写文件
	 */
//	@Test
	public void test2() throws IOException {
		File file = new File("/Users/fan/aaa/1.txt");
		File parent = new File(file.getParent());
		if (!parent.exists()) {
			parent.mkdirs();
		}
		if (!file.exists()) {
			file.createNewFile();
		}
		

		String s = "张凡凡你好\t\n 哈哈";
		FileOutputStream output = new FileOutputStream(file);
		output.write(s.getBytes());
		output.close();
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
	 * 移动文件
	 */
	@Test
	public void testMove() throws IOException {
		File file = new File("/Users/fan/parentdir");
		File newfile = new File("/Users/fan/aaa/");
		moveFile(file, newfile);
	}
	public boolean moveFile(File file, File newpath) throws IOException {
		boolean result = false;
		// 检测待复制文件是否存在
		if (!file.exists()) {
			System.out.println("待复制文件不存在");
			return result;
		}
		
		// 检测目标位置是否存在
		if (!newpath.exists()) {
			System.out.println("目标位置不存在");
			return false;
		}
		
		String fromname = file.getName();
		File newfile = new File(newpath, fromname);
		// 检测复制目标位置是否已经存在同名文件
		if (newfile.exists()) {
			System.out.println("文件已经存在");
			return false;
		}
		if (file.renameTo(newfile)) {
			result = true;
		} else {
			result = copyFile(file, newpath);
			if (result) {
				deleteFile(file);
			}
		}
		return result;
	}
	
	/*
	 * 复制文件
	 */
//	@Test
	public void test() throws IOException {
		File file = new File("/Users/fan/parentdir");
		File newfile = new File("/Users/fan/aaa/");
		copyFile(file, newfile);
	}
	
	/*
	 * 复制 文件/文件夹 到新的目录
	 */
	public boolean copyFile(File file, File newpath) throws IOException {
		boolean result = false;
		// 检测待复制文件是否存在
		if (!file.exists()) {
			System.out.println("待复制文件不存在");
			return result;
		}
		
		// 检测目标位置是否存在
		if (!newpath.exists()) {
			System.out.println("目标位置不存在");
			return false;
		}
		
		String fromname = file.getName();
		File newfile = new File(newpath, fromname);
		// 检测复制目标位置是否已经存在同名文件
		if (newfile.exists()) {
			System.out.println("文件已经存在");
			return false;
		}
		
		// 复制的是单个文件
		if (file.isFile()) {
			if (!newfile.createNewFile()) {
				System.out.println("目标文件创建失败");
				return false;
			}
			
			FileInputStream fileinput = new FileInputStream(file);
			FileOutputStream newoutput = new FileOutputStream(newfile);
			byte[] buf = new byte[(int)file.length()];
			fileinput.read(buf);
			fileinput.close();
			
			newoutput.write(buf);
			newoutput.close();
			result = true;
		} else {
			newfile.mkdir();
			
			File[] filelist = file.listFiles();
			for (File f:filelist) {
				copyFile(f, newfile);
			}
			result = true;
		}
		return result;
	}
}
