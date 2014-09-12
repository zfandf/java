package genericityDemo;

import java.util.Arrays;
import java.util.Comparator;

import compareDemo.Student;
import compareDemo.StudentComparator;

public class ArraysDemo {

	public static void main(String[] args) {
		int[] arrs = {100,32,45,2,34,67,1,0};
		for (Integer n: arrs) {
			System.out.println(n);
		}
		System.out.println("-----------排序后------------");
		Arrays.sort(arrs);
		for (Integer n: arrs) {
			System.out.println(n);
		}
		
		Student[] studs = {
				new Student(15, "张三", 10),
				new Student(11, "李四", 21),
				new Student(92, "王武", 12),
				new Student(1, "赵六", 11),
				new Student(17, "孙七", 1)
		};
		for (Student s: studs) {
			System.out.println(s);
		}
		System.out.println("-----------排序后------------");
		
		Comparator<Student> comparator = new StudentComparator();
		Arrays.sort(studs, comparator);
		for (Student s: studs) {
			System.out.println(s);
		}
	}
}
