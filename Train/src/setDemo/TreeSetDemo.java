package setDemo;

import java.util.Iterator;
import java.util.TreeSet;

import compareDemo.Person;

public class TreeSetDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TreeSet set = new TreeSet();
//		set.add(new Student());
		set.add("China");
		set.add("window");
		set.add("mac");
		
		Iterator it = set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		Person p1 = new Person("张三丰", 60);
		Person p2 = new Person("张无忌", 20);
		Person p3 = new Person("张三丰", 60);
		TreeSet set2 = new TreeSet();
		set2.add(p1);
		set2.add(p2);
		set2.add(p3);
		
		Iterator it2 = set2.iterator();
		while (it2.hasNext()) {
			System.out.println(it2.next());
		}
	}

}

