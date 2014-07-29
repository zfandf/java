import java.math.BigInteger;
import java.util.Scanner;

/**
 * 幸运抽奖游戏：
 * 用户输入身份证号码，如果身份证各位数字之和能被13整除，则为幸运数字。
 * @author zhangff
 *
 */
public class LuckUser {

	public static void main(String[] args) {
		String sid;// 用户身份证号码
		Scanner in = new Scanner(System.in);
		System.out.println("请输入你的身份证号码：");
		sid = in.next();
		System.out.println("您输入的身份证号："+sid);
		
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
			System.out.println("恭喜您成为幸运用户");
		} else {
			System.out.println("很遗憾，您不是幸运用户");
		}
	}

}
