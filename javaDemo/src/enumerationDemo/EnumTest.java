package enumerationDemo;

import java.util.Scanner;

public class EnumTest {

	public static Scanner in = new Scanner(System.in);
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		getWeek();
	}
	
	public static void getWeek() {
		MyWeek[] weeks = MyWeek.values();
		int i = 0;
		for (MyWeek week :weeks) {
			System.out.println((i++) + "." + week.getName());
		}
		System.out.println("今天吃什么呢, 先告诉我今天周几吧:");
		int select = in.nextInt();
		MyWeek select_day = weeks[select];
		System.out.println(select_day.getFood());
		
		for (int j = 0; j < 100; j++) {
			System.out.println((int)Math.random()*10);
		}
		
	}
}