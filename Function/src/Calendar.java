import java.util.Scanner;

/**
 * ������
 * @author YASHIRO
 * ����1900-1-1������һ��Ҫ����ÿ���µ�һ�������ڼ���
 * ��Ҫͳ����һ�����1900-1-1���˶�����
 * 
 * ����366�죬2��29�죬ƽ��365�죬2��28�죬
 */
public class Calendar {
	
	/*
	 * �ж��Ƿ�������
	 */
	public static boolean isRun(int year) {
		if ((year%4 == 0 && year%100 != 0) || year%400 == 0) {
			return true;
		}
		return false;
	}
	
	/*
	 * ������ݺ��·ݷ��ظ���������
	 */
	public static int getMonthDays(int year, int month) {
		int days = 31;// Ĭ��ÿ��31��
		switch (month) {
			// ������
			case 2:
				if (isRun(year)) {
					days = 29;
				} else {
					days = 28;
				}
				break;
			// С��
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
	 * ���������ݺ��·ݵ�һ�����1900-1-1���˶�����
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
		
		System.out.println("*******************��ӭʹ��������*******************");
		
		Scanner in = new Scanner(System.in);
		int year;// �û���������
		int month;// �û�������·�
		int monthDays;// ���µ�������
		int totalDays;// ָ���µ�һ�����1900-1-1������
		int day;// ���µ�һ�������ڼ�
		
		System.out.print("��������ݣ�");
		year = in.nextInt();
		System.out.print("�������·ݣ�");
		month = in.nextInt();
		
		System.out.print(year+"��"+month+"��");
		
		if (isRun(year)) {
			System.out.println(" ����");
		} else {
			System.out.println(" ƽ��");
		}
		monthDays = getMonthDays(year, month);// �õ���ǰ������
		totalDays = getTotalDays(year, month);// �õ���ǰ�µ�һ�����1900-1-1������
		day = totalDays%7;// �õ����ڼ�
		
		System.out.println("������\t������\t������\t������\t������\t���ڶ�\t����һ\t");
		int iCount = 0;// ���������Ƿ���
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
