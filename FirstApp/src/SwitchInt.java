/**
 * ��β��������м��������ʵ�����������Ľ���
 * @author YASHIRO
 *
 */
public class SwitchInt {

	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		SwitchInt si = new SwitchInt();
		int x = 10;
		int y = 1;
		si.fun1(x, y);
		si.fun2(x, y);
		si.fun3(x, y);
	}
	
	void fun1(int x, int y) {
		int temp;
		temp = x;
		x = y;
		y = temp;
		System.out.println("x="+x+",y="+y);
	}
	
	void fun2(int x, int y) {
		x = x + y;
		y = x - y;
		x = x - y;
		System.out.println("x="+x+",y="+y);  
	}
	
	void fun3(int x, int y) {
		x = x ^ y;
		y = x ^ y;
		x = x ^ y;
		System.out.println("x="+x+",y="+y);  
	}


}
