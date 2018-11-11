package org.pross.sort;

/**
 * @describe: 插入排序
 * @author:彭爽pross
 * @date: 2018/10/27
 */
public class InsertionSort {

    public static int[] insertionSort(int[] array) {
        int len = array.length;
        int preIndex, current;

        for (int i = 1; i < len; i++) {
            preIndex = i - 1;
            current = array[i];
            while (preIndex >= 0 && array[preIndex] > current) {
                array[preIndex + 1] = array[preIndex];
                preIndex--;
            }
            array[preIndex + 1] = current;
        }
        return array;
    }

    public static void main(String[] args) {
        int[] array = new int[]{8, 9, 6, 10, 4, 7, 2};
        int[] sort = InsertionSort.insertionSort(array);
        for (int num : sort) {
            System.out.print(num + ",");
        }
    }

}
