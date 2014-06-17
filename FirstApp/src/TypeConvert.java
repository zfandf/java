
public class TypeConvert {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		TypeConvert tc = new TypeConvert();
		tc.charToInt();
	}

	void intToDouble() {
		// 整型转双精度浮点型，低精度转成高精度，会自动转换
		int n = 100;
		double d = n;
		System.out.println(d); // out: 100.0
	}
	
	void doubleToInt() {
		// 高精度转低精度,不遵循四舍五入
		double d = 123.94;
		int n = (int)d;
		System.out.println(n);// out: 123
	}
	
	void charToInt() {
		char c = 'A';
		int n = c;
		System.out.println(n);// out: 123
		System.out.println((char)n);// out: 123
	}

}
