
public class Test2 {
	/*
	 * 交换两个数值，函数中参数的本质就是实参把自己的副本拷贝给了形参，所以修改并没有在实参上执行
	 */
	public static void swap(int x, int y) {
		int temp;
		temp = x;
		x = y;
		y = temp;
		System.out.println("调用方法之后：x="+x+",y="+y);
	}
	
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int x = 10;
		int y = 7;
		System.out.println("转换之前：x="+x+",y="+y);
		swap(x, y);
		System.out.println("转换之后：x="+x+",y="+y);
	}

}
