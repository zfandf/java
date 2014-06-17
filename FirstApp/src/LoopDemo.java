import java.util.Scanner;

/**
 * ѭ��
 * @author YASHIRO
 *
 */
public class LoopDemo {

	public static void main(String[] args) {
		LoopDemo ld = new LoopDemo();
		ld.monkey();
	}
	
	/*
	 * ����ժ���ӣ�ÿ���һ���һ�����ӣ��Ե���10���ʱ��ʣ1�����ӣ��ʺ����ܹ�ժ�˶��ٸ�����
	 */
	void monkey() {
		int sum = 1;
		int date = 10;
		// 9: (1+1)x2 = 4
		// 8: (4+1)x2 = 10
		while (date > 1) {
			sum = (sum + 1) * 2;
			System.out.println(sum);
			date --;
		}
		System.out.println(sum);
	}
	
	/*
	 * do-while
	 */
	void doWhileLoop() {
		int i = 1;
		do {
			System.out.println(i);
			i++;
		} while (i < 100);
	}
	
	/*
	 * while loop
	 */
	void whileLoop() {
		int i = 1;
		while (i <= 100); {
			System.out.println(i);
			i++;
		}
	}
	
	// С�����Ե�100�ֽ������ν��һ��
	void testLoop() {
		int score;
		Scanner in = new Scanner(System.in);
		do {
			System.out.println("�����뿼�Գɼ���");
			score = in.nextInt();
		} while (score != 100);
		
		System.out.println("��ñ��ν��һ����");
	}
	
	/*
	 * �ж����꣺1900-2050���ڼ����е�����
	 * �ܱ�4���������ܱ�100�����������ܱ�400����
	 */
	void runYear() {
		int year = 1900;
		while (year <= 2050) {
			if (year%4 == 0 && year%100 != 0) {
				System.out.println(year);
			} else if (year%400 == 0) {
				System.out.println(year);
			}
			year++;
		}
		System.out.println("����");
		
	}
	
}
