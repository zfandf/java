import java.util.Arrays;


public class ArrSort {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		int[] arr = {54,33,1,43,3,5,64};
		int l = arr.length;
		System.out.print("排序前：");
		for (int i = 0; i < l; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		Arrays.sort(arr);
		System.out.print("排序后：");
		for (int i = 0; i < l; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		System.out.print("倒序后：");
		for (int i = (l-1); i >= 0; i--) {
			System.out.print(arr[i]+" ");
		}
	}

}
