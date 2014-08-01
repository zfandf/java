package ATM;

public class Account {
	
	private String name;
	private String id;
	private String password;
	private double balance;
	
	Account() {
		initAccount();
	}
	
	public void initAccount() {
		this.name = "无名氏";
		this.password = "888888";
		this.balance = 0;
		this.id = "";
		
		// 生成一个随机数
		for (int i = 0; i < 6; i++) {
			int tmp = (int)(Math.random()*100)%10;// 生成一个0-9之间的随机数
			this.id += tmp;
		}
	}
	
	@Override
	public String toString() {
		return "户主："+this.getName()+" \n账号："+this.getId()+"\n余额："+this.getBalance();
	}
	
	public void showInfo() {
		System.out.println("ID："+this.id);
		System.out.println("用户名："+this.name);
		System.out.println("账户余额："+this.balance);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	
}
