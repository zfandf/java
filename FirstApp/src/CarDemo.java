import java.util.Scanner;

/**
 * 城市出租车计费问题
 * 1. 白天6:00-晚上21:00，起步价：6元，晚上22:00-次日5:00，起步价7元
 * 2. 起步价包含2公里，超出部分按照每公里1.5元收费。
 * 3. 每次乘车加收1元的燃油附加税
 * @author YASHIRO
 *
 */
public class CarDemo {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		double totalPrice;
		int startPrice;
		int hours;
		int distance;
		
		Scanner in = new Scanner(System.in);
		System.out.println("请输入打车时间：");
		hours = in.nextInt();
		
		System.out.println("请输入打车公里：");
		distance = in.nextInt();
		
		if (hours >= 6 && hours <= 21) {
			startPrice = 6;
		} else if (hours <= 5 || hours >= 22) {
			startPrice = 7
		} else {}
		
	}

}
