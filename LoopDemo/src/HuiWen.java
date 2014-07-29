/**
 * 打印1000-9999之间的回文
 * 回文就是，正着的数和倒着的数一样大。比如：1001,5005,8228,9999等
 * 
 * 还有另外一种方法，判断字符相等
 * @author YASHIRO
 *
 */
public class HuiWen {

	public static void main(String[] args) {
		int gw;// 个位
		int sw;// 十位
		int bw;// 百位
		int qw;// 千位
		
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
