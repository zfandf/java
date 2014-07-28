import java.util.Scanner;


public class LoopFor {

	public static void main(String[] args) { 
//		for (int i = 1; i < 100; i++) {
//			System.out.println(i);
//		}
		LoopFor lf = new LoopFor();
		lf.test2Demo();
	}
	
	void breakDemo() {
		for (int i = 1; i <= 40; i++) {
			System.out.println("跑完第"+i+"圈");
			if (i == 10) {
				System.out.println("身体不舒服，不能跑了。。。");
				break;// 退出整个循环
			}
		}
		System.out.println("今天训练到此结束");
	}
	
	void continueDemo() {
		for (int i = 1; i <= 40; i++) {
			if (i == 10) {
				System.out.println("去接个电话。。。。");
				continue;
			}
			System.out.println("跑完第"+i+"圈");
		}
		System.out.println("今天训练到此结束");
	}
	
	// 使用for循环实现求n!
	void test1Demo() {
		int n;
		int result = 1;
		Scanner in = new Scanner(System.in);
		System.out.print("请输入一个正整数：");
		n = in.nextInt();
		for (int i = 1; i <= n; i++) {
			result = result*i;
		}
		System.out.println(n+"阶乘是:"+result);
	}
	
	/*
	 * 所谓素数又叫质数，是指能被1和它本身整除的数字，1除外
	 * 100以内的素数有25个
	 * 注意：2和3是所有素数中唯一两个连着的数
	 * 2是唯一一个为偶数的素数
	 * 
	 * 输入一个正整数，判断是否为素数
	 */
	void test2Demo() {
		int num;
		Scanner in = new Scanner(System.in);
		System.out.print("请输入待判断的数字：");
		num = in.nextInt();
		boolean isSu = true;
		if (num == 1) {
			isSu = false;
		} else {
			// 37数字，2，3,4.。。36, 2 - 一直出到这个数的平方根就OK了
//			for (int i = 2; i < num; i++) {// 这种写法效率太低
			for (int i = 2; i <= Math.sqrt(num); i++) {
				if (num % i == 0) {
					isSu = false;
					break;
				}
			}
		}
		if (isSu) {
			System.out.println(num+"是素数");
		} else {
			System.out.println(num+"不是素数");
		}
	}

}
