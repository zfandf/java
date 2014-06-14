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
		int n = in.nextInt();
		/*
		 * 1 1
		 * 2 3
		 * 3 5
		 * 4 7
		 * n n*2-1
		 * 每层都是基数个星星
		 */
		for (int i = 1; i <= n; i++) {
			for (int k = 1; k < n; k++) {
				System.out.print(" ");
			}
			for (int j = 1; j <= 2*i-1; j++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
