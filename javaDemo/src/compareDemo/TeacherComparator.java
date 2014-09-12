package compareDemo;

import java.util.Comparator;

public class TeacherComparator implements Comparator<Teacher> {
	@Override
	public int compare(Teacher o1, Teacher o2) {
		// TODO Auto-generated method stub
		if (o1.age > o2.age) {
			return 1;
		} else if (o1.age < o2.age) {
			return -1;
		} else {
			return 0;
		}
	}
}