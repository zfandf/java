/**
 * һֻ����5ԪǮ��һֻĸ��3ԪǮ����ֻС��1ԪǮ��Ҫ����100ֻ�������ж�������
 * @author zhangff
 *
 */
public class BuyCook {

	public static void main(String[] args) {
		int gj;
		int mj;
		int xj;
		
		for (gj = 0; gj <= 25; gj++) {
			for (mj = 0; mj <= 33; mj++) {
				for (xj = 0; xj <= 100; xj++) {
					if (xj%3 == 0 && (gj+mj+xj == 100) && (5*gj+3*mj+xj/3 == 100)) {
						System.out.println("������"+gj+"ֻ��ĸ����"+mj+"ֻ��С����"+xj+"ֻ");
					}
				}
			}
		}

	}

}
