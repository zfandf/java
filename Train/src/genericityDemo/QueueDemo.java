package genericityDemo;

import java.util.LinkedList;
import java.util.Queue;

public class QueueDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] names = {"张三", "李四", "王五", "赵六", "孙七"};
		
		Queue<String> queue = new LinkedList<String>();
		for (String s: names) {
			queue.add(s);
		}
		
		while (!queue.isEmpty()) {
			System.out.println(queue.remove());
		}
	}

}
