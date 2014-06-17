import java.util.Scanner;

/**
 * 循环
 * @author YASHIRO
 *
 */
public class LoopDemo {

	public static void main(String[] args) {
		LoopDemo ld = new LoopDemo();
		ld.monkey();
	}
	
	/*
	 * 猴子摘桃子，每天吃一半加一个桃子，吃到第10天的时候还剩1个桃子，问猴子总共摘了多少个桃子
	 */
	void monkey() {
		int sum = 1;
		int date = 10;
		// 9: (1+1)x2 = 4
		// 8: (4+1)x2 = 10
		while (date > 1) {
			sum = (sum + 1) * 2;
			System.out.println(sum);
			date --;
		}
		System.out.println(sum);
	}
	
	/*
	 * do-while
	 */
	void doWhileLoop() {
		int i = 1;
		do {
			System.out.println(i);
			i++;
		} while (i < 100);
	}
	
	/*
	 * while loop
	 */
	void whileLoop() {
		int i = 1;
		while (i <= 100); {
			System.out.println(i);
			i++;
		}
	}
	
	// 小明考试到100分奖励变形金刚一个
	void testLoop() {
		int score;
		Scanner in = new Scanner(System.in);
		do {
			System.out.println("请输入考试成绩：");
			score = in.nextInt();
		} while (score != 100);
		
		System.out.println("获得变形金刚一个！");
	}
	
	/*
	 * 判断闰年：1900-2050年期间所有的闰年
	 * 能被4整除，不能被100整除，但是能被400整除
	 */
	void runYear() {
		int year = 1900;
		while (year <= 2050) {
			if (year%4 == 0 && year%100 != 0) {
				System.out.println(year);
			} else if (year%400 == 0) {
				System.out.println(year);
			}
			year++;
		}
		System.out.println("结束");
		
	}
	
}
