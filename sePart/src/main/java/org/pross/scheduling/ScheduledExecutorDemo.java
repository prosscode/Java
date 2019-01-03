package org.pross.scheduling;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * @describe: ScheduledExecutor 任务调度
 * @author:彭爽pross
 * @date: 2018/12/27
 */
public class ScheduledExecutorDemo implements Runnable{

	@Override
	public void run() {
		System.out.println("task 1");
	}

	public static void main(String[] args) {
		// 初始化线程池
		ScheduledExecutorService service = Executors.newScheduledThreadPool(10);
		// task 1
		service.scheduleAtFixedRate(new ScheduledExecutorDemo(),1000,1000, TimeUnit.SECONDS);
		// task 2
		service.scheduleAtFixedRate(new Runnable() {
			@Override
			public void run() {
				System.out.println("task 2");
			}
		},1000,1000,TimeUnit.SECONDS);
	}
}
