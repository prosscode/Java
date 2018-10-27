package org.pross.sort;

import java.util.Map;

/**
 * @describe:
 * @author:彭爽pross
 * @date: 2018/10/27
 */
public class ShellSort {

	public static int[] shellSort(int[] array) {
		int i;
		int j;
		int temp;
		//自定义间隔序列
		int number = array.length / 2;
		while (number >= 1) {
			for (i = number; i < array.length; i++) {
				temp = array[i];
				j = i - number;
				while (j >= 0 && array[j] < temp) {
					array[j + number] = array[j];
					j = j - number;
				}
				array[j + number] = temp;
			}
			number = number / 2;
		}

		return array;
	}

	public static void main(String[] args) {
		int[] array = new int[]{3, 9, 6, 10, 4, 7, 2};
		int[] sort = ShellSort.shellSort(array);
		for (int num : sort) {
			System.out.print(num + ",");
		}
	}
}
