import java.util.Scanner;

/**
 * ���г��⳵�Ʒ�����
 * 1. ����6:00-����21:00���𲽼ۣ�6Ԫ������22:00-����5:00���𲽼�7Ԫ
 * 2. �𲽼۰���2����������ְ���ÿ����1.5Ԫ�շѡ�
 * 3. ÿ�γ˳�����1Ԫ��ȼ�͸���˰
 * @author YASHIRO
 *
 */
public class CarDemo {

	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		double totalPrice;
		int startPrice;
		int hours;
		int distance;
		
		Scanner in = new Scanner(System.in);
		System.out.println("�������ʱ�䣺");
		hours = in.nextInt();
		
		System.out.println("������򳵹��");
		distance = in.nextInt();
		
		if (hours >= 6 && hours <= 21) {
			startPrice = 6;
		} else if (hours <= 5 || hours >= 22) {
			startPrice = 7
		} else {}
		
	}

}
