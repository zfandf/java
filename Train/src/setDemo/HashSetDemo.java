package setDemo;

import java.util.HashSet;
import java.util.Iterator;

public class HashSetDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashSet hs = new HashSet<>();
		hs.add(1);
		hs.add("china");
		hs.add(3.14);
		hs.add(true);
		hs.add('A');
		hs.add("china"); // 添加重复的数据无效
		System.out.println(hs.size());
		
		/*
		 * // HashSet 没有方法可以根据下标获取集合中元素, 所以不能使用 for 循环来遍历 Set 集合
		for (int i = 0; i < hs.size(); i++) {
			
		}
		*/
		
		Iterator it = hs.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
	}

}
