package org.pross.sort;

/**
 * @describe: 选择排序
 * @author:彭爽pross
 * @date: 2018/10/27
 */
public class SelectionSort {

    public static int[] selectionSort(int[] array) {
        int len = array.length;
        int minIndex, temp;
        for (int i = 0; i < len; i++) {
            minIndex = i;
            for (int j = i + 1; j < len; j++) {
                //寻找最小的数
                if (array[j] < array[minIndex]) {
                    //将最小的数的索引保存
                    minIndex = j;
                }
            }
            //交换值
            temp = array[i];
            array[i] = array[minIndex];
            array[minIndex] = temp;
        }
        return array;
    }

    public static void main(String[] args) {
        int[] array = new int[]{0, 9, 6, 10, 4, 7, 2};
        int[] sort = SelectionSort.selectionSort(array);
        for (int num : sort) {
            System.out.print(num + ",");
        }
    }
}
