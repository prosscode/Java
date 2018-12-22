package org.pross.threadPool;


import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @describe: Executors线程池创建，使用Executors会造成oom
 * @author:彭爽pross
 * @date: 2018/12/21
 */
public class ExecutorsDemo {

	private static ExecutorService executor = Executors.newFixedThreadPool(10);
	public static void main(String[] args) {
		for(int i=0;i<Integer.MAX_VALUE;i++){
			executor.execute(new subThread());
			System.out.println("Thread count："+i);
		}

	}
}
class subThread implements Runnable{

	@Override
	public void run() {
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
