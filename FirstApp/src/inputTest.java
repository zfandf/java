import java.util.Scanner;

public class inputTest {

	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		int num;
		double d;
		boolean flag;
		String s;
		
		Scanner input = new Scanner(System.in);// ��Ҫ����Scanner��
		System.out.println("������һ������");
		num = input.nextInt();
		
		System.out.println("������һ��С��");
		d = input.nextDouble();
		
		System.out.println("������һ���������͵�ֵ");
		flag = input.nextBoolean();
		
		System.out.println("������һ���ַ���");
		s = input.next();
		
		System.out.println(num);
		System.out.println(d);
		System.out.println(flag);
		System.out.println(s);
		
		
	}

}
