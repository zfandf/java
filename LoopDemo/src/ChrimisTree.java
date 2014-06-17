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
		int h = in.nextInt();
		/*
		 * 1 1 
		 * 2 3
		 * 3 5
		 * 4 7
		 * n n*2-1
		 * h h*2-1
		 * 
		 * *�� = 2*n - 1
		 * �ո��� = h - n 
		 */
		for (int i = 1; i <= h; i++) {
			// ��ӡ�ո���
			for (int k = 1; k <= h-i; k++) {
				System.out.print(" ");
			}
			// ��ӡ����
			for (int j = 1; j <= 2*i-1; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		// ��ӡ������
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
