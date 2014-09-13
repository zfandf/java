package threadDemo;

public class UserQueue {
	
	private int count = 10;
	
	public int call(String sign) {
		System.out.println("请第" + (this.count) + "号去" + sign + "服务台");
		return this.count--;
	}

	public synchronized int getCount() {
		return count;
	}
}
