package org.pross.scheduling;

import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/**
 * @describe: timer调度
 * @author:彭爽pross
 * @date: 2018/12/27
 */
public class TimerDemo extends TimerTask {

	private String taskName="";

	//构造方法
	protected TimerDemo(String taskName) {
		super();
		this.taskName=taskName;
	}

	@Override
	public void run() {
		System.out.println("TimerTask "+taskName+","+new Date());
	}

	public static void main(String[] args) {
		Timer timer = new Timer();
		long delay1 = 1 * 1000;
		long period1 = 1000;
		timer.schedule(new TimerDemo("task 1"),delay1,period1);

		long delay2 = 2 * 1000;
		long period2 = 1000;
		timer.schedule(new TimerTask() {
			String taskName = "task 2";
			int i = 0;
			@Override
			public void run() {
				i++;
				System.out.println("TimerTask "+taskName+","+new Date());
				if(i>2){
					cancel();
				}

			}
		},delay2,period2);
	}
}
