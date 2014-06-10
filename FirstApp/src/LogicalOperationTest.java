
public class LogicalOperationTest {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		LogicalOperationTest lo = new LogicalOperationTest();
		lo.andTest();
	}
	
	void andTest() {
		int x = 10;
		int y = 3;
		// 执行或运算时，如果表达式一成立，则不再执行表达式二
		if (++x > 10 || y++ < 3) {
			System.out.println("x="+x+",y="+y);
		}
		
		// 执行与运算时，如果表达式一失败，在不再执行表达式二
		if (++x < 10 && ++y > 3) {
			System.out.println("成功：x="+x+",y="+y);
		} else {
			System.out.println("失败：x="+x+",y="+y);
		}
	}


}
