package threadDemo;

public class MarketQueue {
	
	public static int count = 10;
	
	public static void main(String[] args) {
		
		UserQueue queue = new UserQueue();
		
		Thread desk1 = new Thread(new RunnableCheckstand(queue, 10000), "desk1");
		Thread desk2 = new Thread(new RunnableCheckstand(queue, 10000), "desk2");
		
		// TODO Auto-generated method stub
		desk1.start();
		desk2.start();
	}
	
	public static int getCount() {
		return count--;
	}
}
