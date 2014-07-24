package a;

public class A {
	
	int default_n;
	public int public_n;
	protected int protected_n;
	private int private_n;
	
	public A() {
		System.out.println("I am package a's class, I am A");
	}
	
	void default_fn() {
		
	}
	public void public_fn() {
		
	}
	protected void protected_fn() {
		
	}
	
	private void private_fn() {
		
	}
	
	public static void main(String [] args) {
		A a = new A();
		System.out.println(a.default_n);
		System.out.println(a.public_n);
		System.out.println(a.protected_n);
		System.out.println(a.private_n);
	
		a.default_fn();
		a.public_fn();
		a.protected_fn();
		a.private_fn();
	} 
}
