
public class LogicalOperationTest {

	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		LogicalOperationTest lo = new LogicalOperationTest();
		lo.andTest();
	}
	
	void andTest() {
		int x = 10;
		int y = 3;
		// ִ�л�����ʱ��������ʽһ����������ִ�б��ʽ��
		if (++x > 10 || y++ < 3) {
			System.out.println("x="+x+",y="+y);
		}
		
		// ִ��������ʱ��������ʽһʧ�ܣ��ڲ���ִ�б��ʽ��
		if (++x < 10 && ++y > 3) {
			System.out.println("�ɹ���x="+x+",y="+y);
		} else {
			System.out.println("ʧ�ܣ�x="+x+",y="+y);
		}
	}


}
