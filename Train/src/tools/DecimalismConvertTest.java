package tools;

import java.util.Scanner;

public class DecimalismConvertTest {

	private static Scanner in = new Scanner(System.in);
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("请输入一个正整数:");
		int number = in.nextInt();
		DecimalismConvert.convert(number);
		DecimalismConvert.convert(number, 8);
		DecimalismConvert.convert(number, 16);
	}

}
