package java.c_rank;

import java.util.Scanner;

public class SpecialBinomial2 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int x = sc.nextInt();
    int d_1 = sc.nextInt();
    int d_2 = sc.nextInt();
    int q = sc.nextInt();

    int[] a = new int[1000 + 1];

    a[1] = x;
    for (int i = 2; i <= 1000; i++) {
      if (i % 2 == 0) {
        a[i] = a[i - 1] + d_2;
      } else {
        a[i] = a[i - 1] + d_1;
      }
    }

    for (int j = 0; j < q; j++) {
      int k = sc.nextInt();
      System.out.println(a[k]);
    }

    sc.close();
  }
}
