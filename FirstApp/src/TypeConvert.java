
public class TypeConvert {

	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		TypeConvert tc = new TypeConvert();
		tc.charToInt();
	}

	void intToDouble() {
		// ����ת˫���ȸ����ͣ��;���ת�ɸ߾��ȣ����Զ�ת��
		int n = 100;
		double d = n;
		System.out.println(d); // out: 100.0
	}
	
	void doubleToInt() {
		// �߾���ת�;���,����ѭ��������
		double d = 123.94;
		int n = (int)d;
		System.out.println(n);// out: 123
	}
	
	void charToInt() {
		char c = 'A';
		int n = c;
		System.out.println(n);// out: 123
		System.out.println((char)n);// out: 123
	}

}
