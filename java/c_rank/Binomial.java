package java.c_rank;

import java.util.Scanner;

public class Binomial {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int x = sc.nextInt();
    int d = sc.nextInt();
    int k = sc.nextInt();

    // // デバック用
    // System.out.println(x);
    // System.out.println(d);
    // System.out.println(k);
    int[] a = new int[k + 1];
    a[1] = x;

    for (int i = 2; i <= k; i++) {
      a[i] = a[i - 1] + d;
    }

    // for (int num : a) {
    //   System.out.println(num);
    // }

    System.out.println(a[k]);
    sc.close();
  }
}