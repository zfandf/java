package setDemo;

import java.util.Iterator;
import java.util.LinkedHashSet;

public class LinkeHashSetDemo {
	
	public static void main(String[] args) {
		LinkedHashSet set = new LinkedHashSet<>();
		set.add(100);
		set.add('A');
		set.add("china");
		
		Iterator it = set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
	}
}
