package java.c_rank;

import java.util.Scanner;

public class FibonacciSequence {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int k = sc.nextInt();

    int[] a = new int[k + 1];

    a[1] = 1;
    a[2] = 1;
    for (int i = 3; i <= k; i++) {
      a[i] = a[i - 2] + a[i - 1];
    }

    System.out.println(a[k]);
    sc.close();
  }
}
