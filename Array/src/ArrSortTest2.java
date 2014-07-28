import java.util.Arrays;
import java.util.Scanner;

/**
 * 从控制台输入10个整数保存在一个长度为10的整型数组中，并打印出最大 和最小的元素
 * @author YASHIRO
 *
 */
public class ArrSortTest2 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int[] arr = new int[10];
		for (int i = 1; i <= 10; i++) {
			System.out.println("请输入第"+i+"个数：");
			arr[i-1] = in.nextInt();
		}
		
		System.out.print("用户输入的数字依次是：");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		Arrays.sort(arr);
		System.out.println("用户输入的最大数为："+arr[9]);
		System.out.println("用户输入的最小数为："+arr[0]);
	}

}
