package org.pross.sort;

/**
 * @describe: 归并排序
 * @author:彭爽pross
 * @date: 2018/10/27
 */
public class MergeSort {

	public static int[] mergeSort(int[] arr) {
		int[] orderedArr = new int[arr.length];
		for (int i = 2; i < arr.length * 2; i *= 2) {
			for (int j = 0; j < (arr.length + i - 1) / i; j++) {
				int left = i * j;
				int mid = left + i / 2 >= arr.length ? (arr.length - 1) : (left + i / 2);
				int right = i * (j + 1) - 1 >= arr.length ? (arr.length - 1) : (i * (j + 1) - 1);
				int start = left, l = left, m = mid;
				while (l < mid && m <= right) {
					if (arr[l] < arr[m]) {
						orderedArr[start++] = arr[l++];
					} else {
						orderedArr[start++] = arr[m++];
					}
				}
				while (l < mid)
					orderedArr[start++] = arr[l++];
				while (m <= right)
					orderedArr[start++] = arr[m++];
				System.arraycopy(orderedArr, left, arr, left, right - left + 1);
			}
		}
		return orderedArr;
	}

	public static void main(String[] args) {
		int[] array = new int[]{11, 9, 6, 10, 4, 7, 2};
		int[] sort = MergeSort.mergeSort(array);
		for (int num : sort) {
			System.out.print(num + ",");
		}
	}
}
