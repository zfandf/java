/**
 * �õݹ�ʵ����n!
 * n! = n*(n-1)!
 * (n-1)! = (n-1)*(n-2)!
 * ...
 * 
 * @author YASHIRO
 *
 */
public class JieCheng {
	
	public static long jieCheng(int n) {
		if (n == 1) {
			return 1;
		} else {
			return n*jieCheng(n-1);// �����еݹ����
		}
	}
	
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		int n = 3;
		System.out.println(n+"!="+jieCheng(n));
	}

}
