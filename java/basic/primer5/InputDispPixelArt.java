package java.basic.primer5;

import java.util.Scanner;

public class InputDispPixelArt {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int m = sc.nextInt();

    int[][] table = new int[n][m];
    // 標準入力から2次元配列に代入する
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        table[i][j] = sc.nextInt();
      }
    }
    sc.close();

    // 2次元配列から文字を出力
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        if (table[i][j] == 1) {
          System.out.print("#");
        } else {
          System.out.print(" ");
        }
      }
      System.out.println("");
    }
  }
}
