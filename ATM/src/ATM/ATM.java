package ATM;

import java.util.Scanner;

/**
 * 实现控制台实现银行ATM系统
 * @author mobilewoo
 * 运行效果
 * ***********欢迎使用XXX银行ATM系统*************
 * 1. 开户
 * 2. 查询余额
 * 3. 存款
 * 4. 取款
 * 5. 修改密码
 * 6. 退出系统
 * 
 * 账户类：Account 
 * 	户主
 * 	帐号（6位） 随机生成
 * 	密码（6位） 默认888888
 * 	余额（double）
 * 
 * 异常类：ATMException
 * 	ATM系统中所发生的异常都抛出ATMException类型的异常
 * 
 * ATM类：ATM
 * 	每个功能对应一个静态方法，是整个项目的主类
 *  
 *
 */

public class ATM {
	
	private static final Scanner in = new Scanner(System.in);
	private static int choice;
	private static Account account;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		showMenu();
		
		do {
			if (choice == 6) {
				break;
			}
			double num;
			switch (choice) {
				case 1:
					ATM.initAccount();
					break;
				case 2:
					ATM.showBalance();
					break;
				case 3:
					do {
						System.out.println("请输入存款金额");
						num = in.nextDouble();
					} while (!ATM.deposite(num));
					break;
				case 4:
					do {
						System.out.println("请输入取款金额");
						num = in.nextDouble();
					} while (!ATM.draw(num));
					break;	
				case 5:
					String pass;
					String newpass;
					
					System.out.println("请输入密码");
					pass = in.next();
					if (ATM.checkPass(pass)) {
						System.out.println("请输入新密码");
						newpass = in.next();
						ATM.changePassword(newpass);
					}
					break;
					
			}
			ATM.showMenu();
		} while (choice != 6);
		System.out.println("感谢您的使用，欢迎下次光临！");
	}
	
	// create account
	public static void initAccount() {
		account = new Account();
		System.out.println("开户成功，以下是您账户的信息");
		System.out.println(account);
	}
	
	// show balance
	public static void showBalance() {
		System.out.println(account);
	}
	
	// 存款
	public static boolean deposite(double num) {
		try {
			if (num < 0) {
				throw new ATMException("请输入正确的存款金额");
			} else {
				account.setBalance(account.getBalance()+num);
				System.out.println("存款成功");
				System.out.println(account);
				return true;
			}
		} catch (ATMException ex) {
			System.out.println(ex);
			return false;
		}
	} 
	
	// 取款
	public static boolean draw(double num) {
		try {
			if (num < 0) {
				throw new ATMException("取款金额大于0的哦");
			} else if (num > account.getBalance()) {
				throw new ATMException("您的余额不足");
			} else {
				account.setBalance(account.getBalance()-num);
				System.out.println("取款成功");
				System.out.println(account);
				return true;
			}
		} catch (ATMException ex) {
			System.out.println(ex);
			return false;
		}
	}
	
	// 验证密码
	public static boolean checkPass(String pass) {
		try {
			if (pass.equals(account.getPassword())) {
				return true;
			}
			throw new ATMException("密码输入错误");
		} catch (ATMException ex) {
			System.out.println(ex);
			return false;
		}
	}
	
	// 修改密码
	public static boolean changePassword(String pass) {
		try {
			if (pass == null || pass.trim().equals("")) {
				throw new ATMException("密码不能为空");
			} else if (pass.length() != 6) {
				throw new ATMException("输入密码长度不正确");
			} else {
				account.setPassword(pass);
				System.out.println("密码修改成功");
				return true;
			}
		} catch (ATMException ex) {
			System.out.println(ex);
			return false;
		}
	}
	
	public static void showMenu() {
		System.out.println("*********欢迎进入XXX银行ATM系统*********");
		System.out.println("\t1. 开户");
		System.out.println("\t2. 查询余额");
		System.out.println("\t3. 存款");
		System.out.println("\t4. 取款");
		System.out.println("\t5. 修改密码");
		System.out.println("\t6. 退出系统");
		System.out.println("请选择：");
		
		choice = in.nextInt();
	}
	
	public static void create() {
		System.out.println("请输入帐号名");
		
	}

}
