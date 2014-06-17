import java.util.Scanner;

/**
 * 万年历
 * @author YASHIRO
 * 假设1900-1-1是星期一，要计算每个月第一天是星期几，
 * 需要统计这一天距离1900-1-1过了多少天
 * 
 * 闰年366天，2月29天，平年365天，2月28天，
 */
public class Calendar {
	
	/*
	 * 判断是否是闰年
	 */
	public static boolean isRun(int year) {
		if ((year%4 == 0 && year%100 != 0) || year%400 == 0) {
			return true;
		}
		return false;
	}
	
	/*
	 * 根据年份和月份返回该月总天数
	 */
	public static int getMonthDays(int year, int month) {
		int days = 31;// 默认每月31天
		switch (month) {
			// 特殊月
			case 2:
				if (isRun(year)) {
					days = 29;
				} else {
					days = 28;
				}
				break;
			// 小月
			case 4:
			case 6:
			case 9:
			case 11:
				days = 30;
				break;
		}
		return days;
	}

	/*
	 * 计算给定年份和月份第一天距离1900-1-1过了多少天
	 */
	public static int getTotalDays(int year, int month) {
		int totalDays = 0;
		for (int i = 1900; i < year; i--) {
			if (isRun(year)) {
				totalDays += 366;
			} else {
				totalDays += 365;
			}
		}
		for (int i = 1; i < month; i++) {
			totalDays += getMonthDays(year, i);
		}
		return totalDays;
	}
	
	public static void main(String[] args) {
		
		System.out.println("*******************欢迎使用万年历*******************");
		
		Scanner in = new Scanner(System.in);
		int year;// 用户输入的年份
		int month;// 用户输入的月份
		int monthDays;// 该月的总天数
		int totalDays;// 指定月第一天距离1900-1-1多少天
		int day;// 该月第一天是星期几
		
		System.out.print("请输入年份：");
		year = in.nextInt();
		System.out.print("请输入月份：");
		month = in.nextInt();
		
		System.out.print(year+"年"+month+"月");
		
		if (isRun(year)) {
			System.out.println(" 闰年");
		} else {
			System.out.println(" 平年");
		}
		monthDays = getMonthDays(year, month);// 得到当前月天数
		totalDays = getTotalDays(year, month);// 得到当前月第一天距离1900-1-1的天数
		day = totalDays%7;// 得到星期几
		
		System.out.println("星期日\t星期六\t星期五\t星期四\t星期三\t星期二\t星期一\t");
		int iCount = 0;// 用来决定是否换行
		for (int i = 0; i < day; i++) {
			System.out.print(" \t");
			iCount++;
		}
		for (int i = 1; i <= monthDays; i++) {
			System.out.print(i+"\t");
			iCount++;
			if (iCount%7 == 0) {
				System.out.println();
			}
		}
		
	}

}
