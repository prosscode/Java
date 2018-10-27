package org.pross.sort;

/**
 * @describe: 冒泡排序
 * @author:彭爽pross
 * @date: 2018/10/27
 */
public class BubbleSort {

	public static int[] bubbleSort(int[] array) {
		int len = array.length;
		for (int i = 0; i < len - 1; i++) {
			for (int j = 0; j < len - 1 - i; j++) {
				//相邻的元素两两对比
				if (array[j] > array[j + 1]) {
					//交换值
					int temp = array[j + 1];
					array[j + 1] = array[j];
					array[j] = temp;
				}
			}
		}
		return array;
	}

	public static void main(String[] args) {
		int[] array = new int[]{1, 9, 6, 10, 4, 7, 2};
		int[] sort = BubbleSort.bubbleSort(array);
		for (int num : sort) {
			System.out.print(num + ",");
		}
	}
}
