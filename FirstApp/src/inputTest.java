import java.util.Scanner;

public class inputTest {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int num;
		double d;
		boolean flag;
		String s;
		
		Scanner input = new Scanner(System.in);// 需要导入Scanner类
		System.out.println("请输入一个整数");
		num = input.nextInt();
		
		System.out.println("请输入一个小数");
		d = input.nextDouble();
		
		System.out.println("请输入一个布尔类型的值");
		flag = input.nextBoolean();
		
		System.out.println("请输入一个字符串");
		s = input.next();
		
		System.out.println(num);
		System.out.println(d);
		System.out.println(flag);
		System.out.println(s);
		
		
	}

}
