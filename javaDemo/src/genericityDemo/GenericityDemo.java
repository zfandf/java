package genericityDemo;

import java.util.ArrayList;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class GenericityDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("----------使用泛型----------");
		func1();
		System.out.println("----------未使用泛型----------");
		func2();
		
		System.out.println("----------使用泛型类----------");
		GenericityClass f1 = new GenericityClass(100);
		f1.showType();
		
		GenericityClass f2 = new GenericityClass(new Books("红楼梦", "工业出版社", 100));
		f2.showType();
		
		GenericityClass<Books> f3 = new GenericityClass<Books>(new Books("红楼梦", "工业出版社", 100));
		f3.showType();
		
	}
	
	// 使用泛型
	static void func1() {
		ArrayList<Books> list = new ArrayList<Books>();
		list.add(new Books("红楼梦", "中国工业大学出版社", 100));
		list.add(new Books("西游记", "中国工业大学出版社", 100));
		list.add(new Books("水浒传", "中国工业大学出版社", 100));
		list.add(new Books("三国演义", "中国工业大学出版社", 100));
		
		for (Books book: list) {
			book.showInfo();
		}
	}
	
	// 未使用泛型, 默认为数据类型为 object, 如果要使用自身数据类型的方法, 需要先将对象向下转型.
	static void func2() {
		ArrayList list = new ArrayList();
		list.add(new Books("红楼梦", "中国工业大学出版社", 100));
		list.add(new Books("西游记", "中国工业大学出版社", 100));
		list.add(new Books("水浒传", "中国工业大学出版社", 100));
		list.add(new Books("三国演义", "中国工业大学出版社", 100));
		
		
		for (Object obj: list) {
			((Books)obj).showInfo();
		}
	}

}
