package java.c_rank;

import java.util.Scanner;

public class CalcCal {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 料理の種類
    int cuisineNum = sc.nextInt();
    // 食事する人数
    int num = sc.nextInt();

    // 料理のカロリー
    int[] cuisineCal = new int[cuisineNum];
    for (int i = 0; i < cuisineCal.length; i++) {
      cuisineCal[i] = sc.nextInt();
    }

    // 食べたg数
    int[][] weights = new int[num][cuisineNum];
    for (int n = 0; n < weights.length; n++) {
      for (int c = 0; c < weights[n].length; c++) {
        weights[n][c] = sc.nextInt();
      }
    }

    int[] cals = new int[num];
    for (int n = 0; n < cals.length; n++) {
      for (int c = 0; c < cuisineCal.length; c++) {
        cals[n] += (int) ((double) weights[n][c] / 100 * cuisineCal[c]);
      }
    }

    // System.out.println(num);
    // System.out.println(cuisineNum);

    // // cuisineCalの表示
    // for (int is : cuisineCal) {
    //   System.out.println(is);
    // }

    // // weightsの表示
    // for (int[] weight : weights) {
    //   for (int is : weight) {
    //   System.out.println(is);
    //   }
    // }

    for (int cal : cals) {
      System.out.println(cal);
    }
    sc.close();
  }
}
