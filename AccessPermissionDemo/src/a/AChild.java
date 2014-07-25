package a;

public class AChild extends A {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		A a1 = new AChild();
		AChild ac = new AChild();
		
		System.out.println(a.default_n);
		System.out.println(a.public_n);
		System.out.println(a.protected_n);
//		System.out.println(a.private_n);
		a.default_fn();
		a.public_fn();
		a.protected_fn();
//		a.private_fn();
		
		System.out.println(a1.default_n);
		System.out.println(a1.public_n);
		System.out.println(a1.protected_n);
//		System.out.println(a1.private_n);
		a1.default_fn();
		a1.public_fn();
		a1.protected_fn();
//		a1.private_fn();
		
		System.out.println(ac.default_n);
		System.out.println(ac.public_n);
		System.out.println(ac.protected_n);
//		System.out.println(ac.private_n);
		ac.default_fn();
		ac.public_fn();
		ac.protected_fn();
//		ac.private_fn();
	
	}

}
