package org.pross.sort;

import java.util.ArrayList;
import java.util.List;

/**
 * Author: shawn pross
 * Date: 2018/11/9
 * Description:
 */
public class BucketSort {

    private static int indexFor(int a, int min, int step) {
        return (a - min) / step;
    }

    public static int[] bucketSort(int[] array) {
        int max = array[0], min = array[0];
        for (int a : array) {
            if (max < a)
                max = a;
            if (min > a)
                min = a;
        }
        // bucketNum的值可以根据实际情况选择
        int bucketNum = max / 10 - min / 10 + 1;
        List buckList = new ArrayList<List<Integer>>();
        // create bucket
        for (int i = 1; i <= bucketNum; i++) {
            buckList.add(new ArrayList<Integer>());
        }
        // push into the bucket
        for (int i = 0; i < array.length; i++) {
            int index = indexFor(array[i], min, 10);
            ((ArrayList<Integer>) buckList.get(index)).add(array[i]);
        }
        ArrayList<Integer> bucket = null;
        int index = 0;
        for (int i = 0; i < bucketNum; i++) {
            bucket = (ArrayList<Integer>) buckList.get(i);
            insertSort(bucket);
            for (int k : bucket) {
                array[index++] = k;
            }
        }
        return array;
    }

    // 把桶內元素插入排序
    private static void insertSort(List<Integer> bucket) {
        for (int i = 1; i < bucket.size(); i++) {
            int temp = bucket.get(i);
            int j = i - 1;
            for (; j >= 0 && bucket.get(j) > temp; j--) {
                bucket.set(j + 1, bucket.get(j));
            }
            bucket.set(j + 1, temp);
        }
    }

    public static void main(String[] args) {
        int[] array = {100, 93, 97, 92, 96, 99, 92, 89, 93, 97, 90, 94, 92, 95};
        int[] sort = bucketSort(array);
        for (int digint : sort) {
            System.out.print(digint + ",");
        }
    }
}
