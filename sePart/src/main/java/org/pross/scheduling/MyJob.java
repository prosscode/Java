package org.pross.scheduling;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

/**
 * @describe: 创建一个MyJob类，实现Job接口
 * @author:彭爽pross
 * @date: 2018/12/30
 */
public class MyJob implements Job {

	public static void main(String[] args) {
		Scheduler scheduler = null;
		try {

			// 创建一个JobDetail实例
			JobBuilder jobBuilder = JobBuilder.newJob(MyJob.class);
			jobBuilder.withDescription(" read data from DB.");
			JobDetail jobDetail = jobBuilder.build();

			// 创建一个调度规则, 每3s运行一次
			SimpleScheduleBuilder simpleBuilder = SimpleScheduleBuilder.simpleSchedule().withIntervalInSeconds(3).repeatForever();
			Trigger trigger = TriggerBuilder.newTrigger().withSchedule(simpleBuilder).startNow().build();

			// 从工厂中获取一个调度器Scheduler
			SchedulerFactory schedulerFactory = new StdSchedulerFactory();
			scheduler = schedulerFactory.getScheduler();

			// 注册jobDetail, trigger到调度器Scheduler
			scheduler.scheduleJob(jobDetail, trigger);

			// 开始执行Job
			scheduler.start();
		} catch (Exception e1) {
			try {
				// 出异常了, 停止执行Job
				scheduler.shutdown();
			} catch (SchedulerException e2) {
				e2.printStackTrace();
			}
			e1.printStackTrace();
		}
	}

	@Override
	public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
		String description = jobExecutionContext.getJobDetail().getDescription();
		System.out.println("定时Job开始运行: " + description);
	}
}
