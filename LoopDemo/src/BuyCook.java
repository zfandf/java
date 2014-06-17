/**
 * 一只公鸡5元钱，一只母鸡3元钱，三只小鸡1元钱。要求买100只鸡，问有多少种买法
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
						System.out.println("公鸡："+gj+"只，母鸡："+mj+"只，小鸡："+xj+"只");
					}
				}
			}
		}

	}

}
