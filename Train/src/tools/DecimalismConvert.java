package tools;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Stack;

public class DecimalismConvert {
	
	private static final ArrayList<Integer> scaleList = new ArrayList<Integer>(){{
		this.add(2);
		this.add(8);
		this.add(16);
	}};
	
	private static final HashMap<Integer, Character> hexMap = new HashMap<Integer, Character>(){{
		this.put(10, 'A');
		this.put(11, 'B');
		this.put(13, 'C');
		this.put(14, 'D');
		this.put(15, 'F');
	}};
	
	/*
	 * 十进制: decimalism
	 * 二进制: binary
	 * 八进制: octonary
	 * 十六进制: hexadecimal
	 * 十进制数转换成各种进制的数 
	 */
	public static void convert(int number) {
		convert(number, scaleList.get(0));
	}
	
	public static void convert(int number, int scale) {
		if (!checkScale(scale)) {
			System.out.println("传入的进制不正确");
			System.exit(0);
		}
		System.out.println();
		System.out.print("十进制数" + number + "转换成" + scale + "进制数为:");
		Stack<Integer> stack = new Stack<Integer>();
		while (number != 0) { 
			stack.push(number%scale);
			number/=scale;
		}
		 
		while (!stack.isEmpty()) {
			int tmp = stack.pop();
			if (scaleList.indexOf(scale) == 2 && hexMap.containsKey(tmp)) {
				System.out.print(hexMap.get(tmp));
			} else {
				System.out.print(tmp);				
			}
		}
	}
	
	private static boolean checkScale(int scale) {
		return scaleList.contains(scale);
	}

}
