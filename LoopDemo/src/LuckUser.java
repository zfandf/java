import java.math.BigInteger;
import java.util.Scanner;

/**
 * ���˳齱��Ϸ��
 * �û��������֤���룬������֤��λ����֮���ܱ�13��������Ϊ�������֡�
 * @author zhangff
 *
 */
public class LuckUser {

	public static void main(String[] args) {
		String sid;// �û����֤����
		Scanner in = new Scanner(System.in);
		System.out.println("������������֤���룺");
		sid = in.next();
		System.out.println("����������֤�ţ�"+sid);
		
		BigInteger id = new BigInteger(sid);
		int temp = 0;
		do {
			temp += id.mod(new BigInteger("10")).intValue();
			id = id.divide(new BigInteger("10"));
			if (id.intValue() == 0) {
				break;
			}
		} while (true);
		if (temp%13 == 0) {
			System.out.println("��ϲ����Ϊ�����û�");
		} else {
			System.out.println("���ź��������������û�");
		}
	}

}
