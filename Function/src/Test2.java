
public class Test2 {
	/*
	 * ����������ֵ�������в����ı��ʾ���ʵ�ΰ��Լ��ĸ������������βΣ������޸Ĳ�û����ʵ����ִ��
	 */
	public static void swap(int x, int y) {
		int temp;
		temp = x;
		x = y;
		y = temp;
		System.out.println("���÷���֮��x="+x+",y="+y);
	}
	
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		int x = 10;
		int y = 7;
		System.out.println("ת��֮ǰ��x="+x+",y="+y);
		swap(x, y);
		System.out.println("ת��֮��x="+x+",y="+y);
	}

}
