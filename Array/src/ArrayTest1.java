
public class ArrayTest1 {

	public static void main(String[] args) {
		int[] arr = new int[10]; // 创建了一个长度为10的整型数组
		arr[0] = 100;
		arr[1] = 1;
		arr[3] = 2;
		arr[4] = 'A';// 正确，char和int可以相互转换
//		arr[5] = "hello";// 错误，因为数据类型不一致
		
		System.out.println(arr.length);
	}

}
