package mapDemo;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/**
 * @author YASHIRO
 *
 */
public class MapDemo {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String a = "a", b = "b";
		System.out.println(a);
		System.out.println(b);
		HashMap<String, String> map1 = new HashMap<String, String>();
		HashMap<String, String> map2 = new HashMap<String, String>();
		
		map2.put("key1", "value1");
		map2.put("key4", "value2");
		map2.put("key2", "value2");
		map2.put("key3", "value2");
		
		System.out.println(map1.isEmpty());
		System.out.println(map2.size());
		System.out.println(map2.containsKey("key1"));
		System.out.println(map2.containsValue("value1"));
		
		System.out.println(map2.get("key1"));
//		map2.clear();
//		System.out.println(map2.size());
		
		Set<String> s = map2.keySet();
		Iterator<String> it = s.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
	}

}
