public class SortDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SortDemo s = new SortDemo();
		
		int[] arr = {4,0,5,3,9,6,8,1,7,2}; 
		
		System.out.println("未排序之前结果");
		showSortResult(arr);
		
		System.out.println("-----------------------------");
		System.out.println("冒泡排序");
		s.maoPao(arr);
		
		System.out.println("-----------------------------");
		System.out.println("选择排序");
		s.xuanZe(arr);
		System.out.println("-----------------------------");
	}
	
	static void showSortResult(int[] a) {
		for (int i = 0, iLen = a.length; i < iLen; i++) {
			System.out.print(a[i]+",");
		}
		System.out.println();
	}
	
	/*
	 * 冒泡排序：相邻项比较
	 * 执行次数n^2
	 */
	int[] maoPao(int[] arr) {
		arr = arr.clone();
		int arrLen = arr.length;
		for (int i = 0; i < arrLen; i++) {
			for (int j = 0; j < arrLen - 1; j++) {
				if (arr[j] > arr[j+1]) {
					int temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}
			showSortResult(arr);
		}
		return arr;
	}
	
	/*
	 * 选择排序：选择最小项，放到它应该在的位置
	 * 每一项与后面的项依次比较，不满足，则与比较者互换位置
	 * 效率：n^2
	 */
	int[] xuanZe(int[] arr) {
		int arrLen = arr.length;
		// 第一项与后面的项依次比较，如果第一项比后面的大，则互换位置
		for (int i = 0; i < arrLen; i++) {
			for (int j = i+1; j < arrLen; j++) {
				if (arr[i] > arr[j]) {
					int temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
			showSortResult(arr);
		}
		return arr;
	}

}
