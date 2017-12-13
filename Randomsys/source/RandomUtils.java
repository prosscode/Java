/**
 * 
 */
package com.gh.lesson04.work;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * @author maXpross
 *
 *         Date:2017年12月12日
 *
 *         Content: 随机功能工具类
 *
 *         Analysis:
 */
public class RandomUtils {
	Scanner input = new Scanner(System.in);
	boolean flag = true;

	/**
	 * 数组存储方式
	 */
	public void CompareArray() {
		RandomUtils ru = new RandomUtils();
		System.out.print("功能描述：是否清楚其功能?(Y/N)");
		String choose = input.next();
		switch (choose) {
		case "Y":
			ru.RandomArray();
			break;
		case "N":
			System.out.println("请查看文档README.md");
			ru.reInfo();
			break;
		default:
			System.out.print("选择错误，");
			ru.reInfo();
		}
	}

	/**
	 * 集合+IO流读取方式
	 */
	public void SetAndIO() {
		RandomUtils ru = new RandomUtils();
		System.out.print("功能描述：是否清楚其功能?(Y/N)");
		String choose = input.next();
		switch (choose) {
		case "Y":
			System.out.print("请输入文件地址：");
			String src = input.next();

			// 显示所有的名字
			// ru.showAllName(ru.ReadFile(src));

			// 通过随机数在集合中产生一个随机名字
			ru.RandomNum(ru.ReadFile(src));
			break;
		case "N":
			System.out.println("请查看文档README.md");
			ru.reInfo();
			break;
		default:
			System.out.print("选择错误，");
			ru.reInfo();
		}
	}

	
	
	/**
	 * 实现数组比较产生两次不重复的随机数(数组存储方式)
	 */
	public void RandomArray() {
		RandomUtils ru = new RandomUtils();

		// 初始化数组原始数据
		String[] name = new String[] { "白昊", "别小龙", "邓权", "黄家立", "雷荣", "刘潇",
				"彭爽", "唐超", "王钊源", "颜振", "周军" };
		int num1 = (int) (Math.random() * (name.length));

		// 模拟计算过程
		ru.waitTime();
		System.out.println("第一次随机结果为：" + name[num1]);

		// 将已随机到的值去掉
		for (int j = num1; j < name.length - 1; j++) {
			name[j] = name[j + 1];
		}
		name[name.length - 1] = null;
		// System.out.println(Arrays.toString(name));
		System.out.print("是否继续?(Y/N)");
		String choose = input.next();

		switch (choose) {
		case "Y":
			// 第二次随机
			int num2 = (int) (Math.random() * (name.length));
			// 模拟计算过程
			ru.waitTime();
			System.out.println("第二次随机结果为：" + name[num2]);
			
			for (int j = num2; j < name.length - 1; j++) {
				name[j] = name[j + 1];
			}
			name[name.length - 1] = null;
			ru.reInfo();
			break;
		case "N":
			ru.reInfo();
			break;
		default:
			System.out.print("选择错误，");
			ru.reInfo();
		}
	}

	/**
	 * 遍历输出集合内全部元素(集合+IO流读取方式)
	 * 
	 * @param list
	 */
	public void showAllName(List<String> list) {
		// 遍历ArrayList输出
		for (String str : list) {
			System.out.println(str);
		}
	}

	/**
	 * 产生随机数，从集合输入一个随机名字(集合+IO流读取方式)
	 * 
	 * @param list
	 */
	public void RandomNum(List<String> list) {
		RandomUtils ru = new RandomUtils();
		if (flag) {
			// 模拟计算过程
			ru.waitTime();

			System.out.print("随机结果为：");
			int num = (int) (Math.random() * (list.size() - 1));
			System.out.println(list.get(num));

			ru.reInfo();
		}
	}

	/**
	 * 读取本地文件内容，添加到ArrayList集合内(集合+IO流读取方式)
	 * 
	 * @param src  用户输入文本路径
	 * @param list 返回List集合
	 */
	public List<String> ReadFile(String path) {
		RandomUtils ru = new RandomUtils();
		// 定义一个ArrayList集合存放读取的内容
		List<String> list = new ArrayList<String>();
		try {
			// 字符编码,解决中文乱码问题
			String encoding = "GBK";
			// 指定本地路径文件
			File file = new File(path);
			FileInputStream fs = new FileInputStream(file);

			// 判断是否是一个正常的文件，文件是否存在。
			if (file.isFile() && file.exists()) {
				// 以字符流形式读取文件
				InputStreamReader read = new InputStreamReader(fs, encoding);
				BufferedReader br = new BufferedReader(read);

				// 每次读取一个文本行，去除空格并添加到集合内
				String lineTxt = null;
				while ((lineTxt = br.readLine()) != null) {
					lineTxt = lineTxt.toString().trim();
					list.add(lineTxt);
				}
				read.close();
			} else {
				System.out.println("找不到指定的文件,请确认路径！");
			}
		} catch (Exception e) {
			// e.printStackTrace();
			System.out.println("找不到指定的文件,请确认路径！");
			flag = false;
			ru.reInfo();
		}

		return list;
	}

	
	/**
	 * 等待四秒，显示计算过程(公共类)
	 */
	public void waitTime() {
		System.out.print("正在计算");
		for (int i = 0; i < 4; i++) {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.print(".");
		}
		System.out.println();
	}

	/**
	 * 输入0返回的功能(公共类)
	 */
	public void reInfo() {
		boolean flag = true;
		while (flag) {
			System.out.print("输入0返回：");
			int re = input.nextInt();
			if (re == 0) {
				System.out.println();
				flag = false;
			} else {
				System.out.println("请重新输入正确信息。");
			}
		}
	}

}
