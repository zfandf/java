import java.util.Scanner;

/**
 * ��ӡʥ����
 * �����û���������֣���ӡ�Ǻ���ɵ�ʥ����������Ϊʥ�����Ĳ���
 * @author YASHIRO
 *
 */
public class ChrimisTree {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.println("������ʥ����������");
		int n = in.nextInt();
		/*
		 * 1 1
		 * 2 3
		 * 3 5
		 * 4 7
		 * n n*2-1
		 * ÿ�㶼�ǻ���������
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
