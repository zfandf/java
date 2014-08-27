package arrayList;

import java.util.ArrayList;

import javax.lang.model.element.VariableElement;

public class ArrayListDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Object> list = new ArrayList<Object>(10);
		System.out.println(list.size());
		list.add(100);
		list.add('a');
		list.add("china");
		list.add(1.2);
		list.add("china");
		
		// traverse list with for
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		
		list.trimToSize();
		System.out.println(list.equals(list));
		System.out.println(list.equals(new ArrayList<>()));
		
		System.out.println(list.hashCode());
		
		System.out.println("--------------------");


//		System.out.println(list.isEmpty());// 判断列表是否为空
//		list.clear();// 清空列表
//		list.remove(0);// 移除列表中指定位置上的元素
//		System.out.println(list.lastIndexOf("china"));// 返回列表中最后一次出现该元素的位置, 如果没有,则返回-1
//		System.out.println(list.indexOf("的"));// 返回列表中首次出现该元素的位置, 如果没有,则返回-1
//		System.out.println(list.get(1));// 返回列表中指定位置的元素, 超出范围
//		list.ensureCapacity(10);// 增加ArrayList 实例的容量, 确保它至少能够容纳最小容量参数所指定的元素数
//		System.out.println(list.size());// list 的元素个数
//		System.out.println(list.contains("china"));// 判断某元素是否在 list 中
//		list.set(0, 200);// 替换某一位置上的元素值
//		System.out.println(list.get(0));
		
		
//		Object[] list2 = list.toArray();// 将 list 转成数组
//		for (int i = 0; i < list2.length; i++) {
//			System.out.println(list2[i]);
//		}
		
			
//		ArrayList<Object> list1 = (ArrayList<Object>) list.clone();
//		for (int i = 0; i < list1.size(); i++) {
//			System.out.println(list1.get(i));
//		}
		
//		System.out.println("--------------------");
//		list.add(0, 1);
//		
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i));
//		}
//		
//		System.out.println("--------------------");
//		list.addAll(list);
//		
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i));
//		}
//		
//		System.out.println("--------------------");
//		ArrayList<String> list2 = new ArrayList<String>();
//		list2.add("aaa");
//		list2.add("bbb");
//		list.addAll(2, list2);
//		
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println(list.get(i));
//		}
		
		
		
	
	}

}
