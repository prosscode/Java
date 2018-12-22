package org.pross.threadPool;

import java.util.concurrent.*;

/**
 * @describe: ThreadPoolExecutor创建线程池，自定义LinkedBlockingQueue大小
 * @author:彭爽pross
 * @date: 2018/12/21
 */
public class ThreadPoolExecutorDemo {

	private static ExecutorService executor = new ThreadPoolExecutor(5, 200, 0L,
		TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>(1024));

	public static void main(String[] args) {
		for (int i = 0; i < Integer.MAX_VALUE; i++) {
			executor.execute(new subThreadPool());
			System.out.println("Thread count："+i);
		}
	}
}

class subThreadPool implements Runnable {

	@Override
	public void run() {
		try {
			Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
