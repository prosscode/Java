package org.pross.sort;

/**
 * Author: shawn pross
 * Date: 2018/11/9
 * Description: 快速排序
 */
public class QuickSort {

    public static void quickSort(int[] arr, int head, int tail) {
        if (head >= tail || arr == null || arr.length <= 1) {
            return;
        }
        int i = head, j = tail;
        int pivot = arr[(head + tail) / 2];
        while (i <= j) {
            while (arr[i] < pivot) {
                ++i;
            }
            while (arr[j] > pivot) {
                --j;
            }
            if (i < j) {
                int t = arr[i];
                arr[i] = arr[j];
                arr[j] = t;
                ++i;
                --j;
            } else if (i == j) {
                ++i;
            }
        }
        quickSort(arr, head, j);
        quickSort(arr, i, tail);
    }

    public static void main(String[] args) {
        int[] array = new int[]{11, 9, 6, 10, 4, 7, 2, 1};
        quickSort(array, 0, array.length - 1);
        String out = "";
        for (int digit : array) {
            out += (digit + ",");
        }
        System.out.println(out);
    }

}
