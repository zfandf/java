import java.util.Arrays;
import java.util.Scanner;

/**
 * �ӿ���̨����10������������һ������Ϊ10�����������У�����ӡ����� ����С��Ԫ��
 * @author YASHIRO
 *
 */
public class ArrSortTest2 {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int[] arr = new int[10];
		for (int i = 1; i <= 10; i++) {
			System.out.println("�������"+i+"������");
			arr[i-1] = in.nextInt();
		}
		
		System.out.print("�û���������������ǣ�");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		Arrays.sort(arr);
		System.out.println("�û�����������Ϊ��"+arr[9]);
		System.out.println("�û��������С��Ϊ��"+arr[0]);
	}

}
