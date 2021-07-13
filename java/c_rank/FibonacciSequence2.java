package java.c_rank;

import java.util.Scanner;

public class FibonacciSequence2 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int q = sc.nextInt();

    int[] a = new int[40 + 1];

    a[1] = 1;
    a[2] = 1;
    for (int i = 3; i <= 40; i++) {
      a[i] = a[i - 2] + a[i - 1];
    }

    for (int j = 0; j < q; j++) {
      int k = sc.nextInt();
      System.out.println(a[k]);
    }

    sc.close();
  }
}
