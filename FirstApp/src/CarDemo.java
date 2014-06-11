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
		double totalPrice = 0;
		int startPrice = 0;
		int hours;
		int distance;
		double shuiPrice = 1;
		
		Scanner in = new Scanner(System.in);
		System.out.println("请输入打车时间：");
		hours = in.nextInt();
		
		System.out.println("请输入打车公里：");
		distance = in.nextInt();
		
		if (hours >= 6 && hours <= 21) {
			startPrice = 6;
		} else if (hours <= 5 || hours >= 22) {
			startPrice = 7;
		} else {
			System.out.println("司机目前不工作哦！！！");
			System.exit(0);
		}
		
		if (distance > 2) {
			totalPrice = 1.5 * (distance - 2);
		}
		totalPrice = totalPrice + startPrice + 1;
		System.out.println(totalPrice);
		
	}

}
