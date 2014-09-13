package mapDemo;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class HashMapDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMap map = new HashMap();
		map.put(1, "zhangff");
		map.put("1", "zhaobao");
		map.put(5, "xinju");
		map.put(2, "weige");
		map.put(null, "liuge");
		map.put(3, null);
		map.put("china", "skye");
		map.put(null, null);
		
		// HashMap 是有序的, 按照自然排序进行, 
		Set keys = map.keySet();
		Iterator it1 = keys.iterator();
		while (it1.hasNext()) {
			Object o = it1.next();
			System.err.println(o + ": " + map.get(o));
		}
	}

}
