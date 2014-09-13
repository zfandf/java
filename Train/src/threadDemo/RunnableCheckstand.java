package threadDemo;

public class RunnableCheckstand implements Runnable {

	private int waittime = 100;
	
	private int current;
	
	private UserQueue queue;
	
	public RunnableCheckstand() {
		
	}
	
	public RunnableCheckstand(UserQueue queue, int waittime) {
		this.waittime = waittime;
		this.queue = queue;
	}
	
	public RunnableCheckstand(int waittime) {
		// TODO Auto-generated constructor stub
		this.waittime = waittime;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		while (queue.getCount() > 0) {
			dealUser();
		}
	}
	
	public void dealUser() {
		current = queue.call(Thread.currentThread().getName());
		System.out.println(Thread.currentThread().getName() + " "+ current + " start");
		try {
			Thread.sleep(this.waittime);
			System.out.println(Thread.currentThread().getName() + " "+ current + " end");				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
