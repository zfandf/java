/**
 * ��ӡ1000-9999֮��Ļ���
 * ���ľ��ǣ����ŵ����͵��ŵ���һ���󡣱��磺1001,5005,8228,9999��
 * 
 * ��������һ�ַ������ж��ַ����
 * @author YASHIRO
 *
 */
public class HuiWen {

	public static void main(String[] args) {
		int gw;// ��λ
		int sw;// ʮλ
		int bw;// ��λ
		int qw;// ǧλ
		
		for (int i = 1000; i <= 9999; i++) {
			gw = i%10;
			sw = (i/10)%10;
			bw = (i/100)%10;
			qw = (i/1000)%10;
			if (gw == qw && sw == bw) {
				System.out.println(i);
			}
		}
	}

}
