package org.pross.calendar;

import java.util.Scanner;

/**
 * @author maXpross
 *
 *         Create 2018年1月1日
 *
 *         Content 万年历的入口
 */
public class TestCalendar {
	public static void main(String[] args) {
		// 键盘输出年份和月份
		Scanner input = new Scanner(System.in);
		System.out.print("请输入年份：");
		int year = input.nextInt();
		System.out.print("请输入月份：");
		int month = input.nextInt();
		input.close();
		// 调用实现类
		CalendarMethod cal=new CalendarMethod();
		cal.showDate(year, month);
	}
}
