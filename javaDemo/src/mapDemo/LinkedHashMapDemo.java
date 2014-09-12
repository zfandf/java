package mapDemo;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class LinkedHashMapDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LinkedHashMap map = new LinkedHashMap();
		map.put(1, "zhangff");
		map.put("1", "zhaobao");
		map.put(5, "xinju");
		map.put(2, "weige");
		map.put(null, "liuge");
		map.put(3, null);
		map.put("china", "skye");
		map.put(null, null);
		
		// HashTable 无序的, 键值均不允许为 Null, 
		Set keys = map.keySet();
		Iterator it1 = keys.iterator();
		while (it1.hasNext()) {
			Object o = it1.next();
			System.err.println(o + ": " + map.get(o));
		}
	}

}
