package a;

public class B {
	
	public static void main(String[] args) {
		A a = new A();
		System.out.println(a.default_n);
		System.out.println(a.public_n);
		System.out.println(a.protected_n);
//		System.out.println(a.private_n); // 不能访问其他类的私有属性
		
		a.default_fn();
		a.public_fn();
		a.protected_fn();
//		a.private_fn()a; // 不能访问其他类的私有方法
	}
}
