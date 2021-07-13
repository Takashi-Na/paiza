package java.b_rank;

import java.util.Scanner;

public class ClimbTheStairs {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int[] dp = new int[n + 1];

    dp[0] = 1;
    for (int i = 1; i <= n; i++) {
      if (i >= 1) {
        dp[i] = dp[i] + dp[i - 1];
      }
      if (i >= 2) {
        dp[i] = dp[i] + dp[i - 2];
      }
    }

    // // デバック
    // for (int num : dp) {
    //   System.out.println(num);
    // }

    System.out.println(dp[n]);
    sc.close();
  }
}
