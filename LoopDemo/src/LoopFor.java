import java.util.Scanner;


public class LoopFor {

	public static void main(String[] args) { 
//		for (int i = 1; i < 100; i++) {
//			System.out.println(i);
//		}
		LoopFor lf = new LoopFor();
		lf.test2Demo();
	}
	
	void breakDemo() {
		for (int i = 1; i <= 40; i++) {
			System.out.println("�����"+i+"Ȧ");
			if (i == 10) {
				System.out.println("���岻������������ˡ�����");
				break;// �˳�����ѭ��
			}
		}
		System.out.println("����ѵ�����˽���");
	}
	
	void continueDemo() {
		for (int i = 1; i <= 40; i++) {
			if (i == 10) {
				System.out.println("ȥ�Ӹ��绰��������");
				continue;
			}
			System.out.println("�����"+i+"Ȧ");
		}
		System.out.println("����ѵ�����˽���");
	}
	
	// ʹ��forѭ��ʵ����n!
	void test1Demo() {
		int n;
		int result = 1;
		Scanner in = new Scanner(System.in);
		System.out.print("������һ����������");
		n = in.nextInt();
		for (int i = 1; i <= n; i++) {
			result = result*i;
		}
		System.out.println(n+"�׳���:"+result);
	}
	
	/*
	 * ��ν�����ֽ���������ָ�ܱ�1�����������������֣�1����
	 * 100���ڵ�������25��
	 * ע�⣺2��3������������Ψһ�������ŵ���
	 * 2��Ψһһ��Ϊż��������
	 * 
	 * ����һ�����������ж��Ƿ�Ϊ����
	 */
	void test2Demo() {
		int num;
		Scanner in = new Scanner(System.in);
		System.out.print("��������жϵ����֣�");
		num = in.nextInt();
		boolean isSu = true;
		if (num == 1) {
			isSu = false;
		} else {
			// 37���֣�2��3,4.����36, 2 - һֱ�����������ƽ������OK��
//			for (int i = 2; i < num; i++) {// ����д��Ч��̫��
			for (int i = 2; i <= Math.sqrt(num); i++) {
				if (num % i == 0) {
					isSu = false;
					break;
				}
			}
		}
		if (isSu) {
			System.out.println(num+"������");
		} else {
			System.out.println(num+"��������");
		}
	}

}
