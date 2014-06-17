/**
 * 用递归实现求n!
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
			return n*jieCheng(n-1);// 这里有递归调用
		}
	}
	
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int n = 3;
		System.out.println(n+"!="+jieCheng(n));
	}

}
