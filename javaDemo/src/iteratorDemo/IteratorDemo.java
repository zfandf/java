package iteratorDemo;

import java.util.ArrayList;
import java.util.Iterator;

public class IteratorDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		demo1();
		demo2();
	}
	
	public static void demo1() {
		System.out.println("--------------demo1 ArrayList no type-------------------");
		ArrayList list = new ArrayList();
		list.add(1);
		list.add(2);
		list.add('a');
		list.add("zhangff");
		
		Iterator it = list.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
			it.remove();
		}
		
		System.out.println("----------------------");
		while (it.hasNext()) {
			System.out.println(it.next());
			it.remove();
		}
	}
	
	public static void demo2() {
		System.out.println("---------------demo2 ArrayList have type");
		ArrayList<Object> list = new ArrayList<>();
		list.add(1);
		list.add(2);
		list.add('a');
		list.add("zhangff");
		
		Iterator<Object> it = list.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		System.out.println("----------------------");
		while (it.hasNext()) {
			System.out.println(it.next());
			it.remove();
		}
	}

}
