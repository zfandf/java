import java.util.Scanner;

/**
 * 求圆的面积
 * @author YASHIRO
 *
 */
public class Test3 {
	
	/*
	 * @desc param r 半径
	 */
	public static double getArea(int r) {
		return 3.14*r*r;
	}
	
	public static double getCircle(int r) {
		return 2*3.14*r;
	}
	
	public static void main(String[] args) {
		int r;
		Scanner in = new Scanner(System.in);
		System.out.print("请输入圆的半径：");
		r = in.nextInt();
		System.out.println("该圆的面积是："+getArea(r));
		System.out.println("该圆的周长是："+getCircle(r));
	}

}
