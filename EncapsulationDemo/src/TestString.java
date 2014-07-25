
public class TestString {
	public static void main(String[] args) {
		// 从基本数据类型转换为String
		int num = 100;
		float f = 3.14f;
		double d = 2.32312;
		long l = 123445678;
		boolean b = true;
		
//		String s = num; // error
//		String s = (String)num; // error
		String s;
		s = String.valueOf(num);
		System.out.println(s);
		
		s = String.valueOf(f);
		System.out.println(s);
		
		s = String.valueOf(d);
		System.out.println(s);
		
		s = String.valueOf(l);
		System.out.println(s);
		
		s = String.valueOf(b);
		System.out.println(s);
		
		Integer n = new Integer(123);
		s = String.valueOf(n);
		System.out.println(s);
	}
}
