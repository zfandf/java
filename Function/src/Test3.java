import java.util.Scanner;

/**
 * ��Բ�����
 * @author YASHIRO
 *
 */
public class Test3 {
	
	/*
	 * @desc param r �뾶
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
		System.out.print("������Բ�İ뾶��");
		r = in.nextInt();
		System.out.println("��Բ������ǣ�"+getArea(r));
		System.out.println("��Բ���ܳ��ǣ�"+getCircle(r));
	}

}
