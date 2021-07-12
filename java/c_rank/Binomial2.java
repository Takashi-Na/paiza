package java.c_rank;

import java.util.Scanner;

public class Binomial2 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int x = sc.nextInt();
    int d = sc.nextInt();
    int q = sc.nextInt();

    // // デバック
    // System.out.println(x);
    // System.out.println(d);
    // System.out.println(q);
    int[] a = new int[1000 + 1];

    a[1] = x;
    for (int i = 2; i <= 1001; i++) {
      a[i] = a[i - 1] + d;
    }

    // // デバック
    // for (int num : a) {
    //   System.out.println(num);
    // }

    for (int j = 0; j < q; j++) {
      int k = sc.nextInt();
      System.out.println(a[k]);
    }

    sc.close();
  }
}