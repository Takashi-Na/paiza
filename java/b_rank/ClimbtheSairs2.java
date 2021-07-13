package java.b_rank;

import java.util.Scanner;

public class ClimbtheSairs2 {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 階段の数
    int n = sc.nextInt();
    // 一歩で上がれる階段の数
    int a = sc.nextInt();
    // 一歩で上がれる階段の数
    int b = sc.nextInt();

    // 上れるパターンの配列
    int[] dp = new int[n + 1];

    dp[0] = 1;
    for (int i = 1; i <= n; i++) {
      dp[i] = 0;
      if (i >= a) {
        dp[i] = dp[i] + dp[i - a];
      }
      if (i >= b) {
        dp[i] = dp[i] + dp[i - b];
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
