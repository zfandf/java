package genericityDemo;

public class GenericityClass<T> {

	private T obj;
	
	GenericityClass(T obj) {
		// TODO Auto-generated constructor stub
		this.obj = obj;
	}
	
	void showType() {
		System.out.println("该泛型类引用的数据类型是:" + this.obj.getClass().getName());
	}

}
