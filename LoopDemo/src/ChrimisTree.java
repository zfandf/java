import java.util.Scanner;

/**
 * 打印圣诞树
 * 根据用户输入的数字，打印星号组成的圣诞树，数字为圣诞树的层数
 * @author YASHIRO
 *
 */
public class ChrimisTree {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.println("请输入圣诞树层数：");
		int h = in.nextInt();
		/*
		 * 1 1 
		 * 2 3
		 * 3 5
		 * 4 7
		 * n n*2-1
		 * h h*2-1
		 * 
		 * *数 = 2*n - 1
		 * 空格数 = h - n 
		 */
		for (int i = 1; i <= h; i++) {
			// 打印空格数
			for (int k = 1; k <= h-i; k++) {
				System.out.print(" ");
			}
			// 打印星星
			for (int j = 1; j <= 2*i-1; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		// 打印倒三角
		for (int i = h-1; i > 0; i--) {
			for (int k = 1; k <= h - i; k++) {
				System.out.print(" ");
			}
			for (int j = 1; j <= 2*i - 1; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
