package org.pross.scheduling;

import java.util.Calendar;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * @describe: calender+ScheduledExecutor实现比较复杂的调度
 * @author:彭爽pross
 * @date: 2018/12/27
 */
public class ScheduledExecuteCalendar {

	// 初始化线程池
	private static ScheduledExecutorService service = Executors.newScheduledThreadPool(10);

	/**
	 * 计算从当前时间currentDate开始，
	 * 满足条件dayOfWeek, hourOfDay,minuteOfHour, secondOfMinite的最近时间
	 * @return
	 */
	public Calendar getEarliestDate(Calendar currentDate, int dayOfWeek,
	                                int hourOfDay, int minuteOfHour, int secondOfMinite) {
		//计算当前时间的WEEK_OF_YEAR,DAY_OF_WEEK, HOUR_OF_DAY, MINUTE,SECOND等各个字段值
		int currentWeekOfYear = currentDate.get(Calendar.WEEK_OF_YEAR);
		int currentDayOfWeek = currentDate.get(Calendar.DAY_OF_WEEK);
		int currentHour = currentDate.get(Calendar.HOUR_OF_DAY);
		int currentMinute = currentDate.get(Calendar.MINUTE);
		int currentSecond = currentDate.get(Calendar.SECOND);

		//如果输入条件中的dayOfWeek小于当前日期的dayOfWeek,则WEEK_OF_YEAR需要推迟一周
		boolean weekLater = false;
		if (dayOfWeek < currentDayOfWeek) {
			weekLater = true;
		}
		//当输入条件与当前日期的dayOfWeek相等时，输入条件中的 hourOfDay小于当前日期的 currentHour，则WEEK_OF_YEAR需要推迟一周
		else if (dayOfWeek == currentDayOfWeek) {
			if (hourOfDay < currentHour) {
				weekLater = true;
			} else if (hourOfDay == currentHour) {
				//当输入条件与当前日期的dayOfWeek, hourOfDay相等时，输入条件中的minuteOfHour小于当前日期currentMinute，则WEEK_OF_YEAR需要推迟一周
				if (minuteOfHour < currentMinute) {
					weekLater = true;
				} else if (minuteOfHour == currentSecond) {
					//当输入条件与当前日期的dayOfWeek, hourOfDay，minuteOfHour相等时，如果输入条件中的secondOfMinite小于当前日期的currentSecond，则WEEK_OF_YEAR需要推迟一周
					if (secondOfMinite < currentSecond) {
						weekLater = true;
					}
				}
			}
		}
		if (weekLater) {
			//设置当前日期中的WEEK_OF_YEAR为当前周推迟一周
			currentDate.set(Calendar.WEEK_OF_YEAR, currentWeekOfYear + 1);
		}
		// 设置当前日期中的DAY_OF_WEEK,HOUR_OF_DAY,MINUTE,SECOND为输入条件中的值。
		currentDate.set(Calendar.DAY_OF_WEEK, dayOfWeek);
		currentDate.set(Calendar.HOUR_OF_DAY, hourOfDay);
		currentDate.set(Calendar.MINUTE, minuteOfHour);
		currentDate.set(Calendar.SECOND, secondOfMinite);
		return currentDate;
	}

	public static void main(String[] args) {
		ScheduledExecuteCalendar test = new ScheduledExecuteCalendar();
		// 获取当前时间
		Calendar currentDate = Calendar.getInstance();
		long currentDateLong = currentDate.getTime().getTime();
		System.out.println("当前日期： " + currentDate.getTime().toString());
		// 计算满足条件的最近一次执行时间
		Calendar earliestDate = test.getEarliestDate(currentDate, 6, 12, 00, 00);
		//计算第一次执行延迟时间
		long earliestDateLong = earliestDate.getTime().getTime();
		long delay = earliestDateLong - currentDateLong;
		System.out.println("下一次执行时间："+earliestDate.getTime().toString());
		//计算执行周期为一星期
		long period = 7 * 24 * 60 * 60 * 1000;
		System.out.println("等待执行...");
		service.scheduleAtFixedRate(new Runnable() {
			@Override
			public void run() {
				System.out.println("Task ScheduledExecute");
			}
		}, delay, period, TimeUnit.MILLISECONDS);
	}

}
