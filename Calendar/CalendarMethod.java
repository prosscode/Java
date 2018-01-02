package com.pross.calendar;

import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 * @author maXpross
 *
 *         Create 2018年1月1日
 *
 *         Content Calendar方法类
 */
public class CalendarMethod {
	public void showDate(int year, int month) {
		// 月份要减一
		month -= 1;
		// 实例化日历类 该日历类对象指向某一个时间的当前日历
		Calendar cal = new GregorianCalendar();
		cal.set(Calendar.YEAR, year);
		cal.set(Calendar.MONTH, month);
		cal.set(Calendar.DAY_OF_MONTH, 1);

		System.out.println("日\t一\t二\t三\t四\t五\t六");
		for (int i = 1; i < cal.get(Calendar.DAY_OF_WEEK); i++) {
			System.out.print("\t");
		}
		int i = 0;
		while (i < 31) {
			System.out.print(cal.get(Calendar.DAY_OF_MONTH) + "\t");
			if (cal.get(Calendar.DAY_OF_WEEK) == 7) {
				System.out.println();
			}
			cal.add(Calendar.DAY_OF_MONTH, 1);
			i++;
			
			if (cal.get(Calendar.MONTH) == month + 1) {
				break;
			}
		}
	}
}
