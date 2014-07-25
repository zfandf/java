package b;

import a.A;

public class C extends A {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
//		System.out.println(a.default_n);
		System.out.println(a.public_n);
//		System.out.println(a.protected_n);
//		System.out.println(a.private_n);
//		a.default_fn();
		a.public_fn();
//		a.protected_fn();
//		a.private_fn();
		
		A ac = new C();
//		System.out.println(ac.default_n);
		System.out.println(ac.public_n);
//		System.out.println(ac.protected_n);
//		System.out.println(ac.private_n);
//		ac.default_fn();
		ac.public_fn();
//		ac.protected_fn();
//		ac.private_fn();
		
		C c = new C();
//		System.out.println(c.default_n);
		System.out.println(c.public_n);
		System.out.println(c.protected_n);
//		System.out.println(c.private_n);
		
//		c.default_fn();
		c.public_fn();
		c.protected_fn();
//		c.private_fn();
	}

}
