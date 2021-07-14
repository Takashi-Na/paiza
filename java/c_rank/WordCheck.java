package java.c_rank;

import java.util.Scanner;

public class WordCheck {

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 問題の数
    int n = sc.nextInt();
    int score = 0;

    // 問題の数for文を回す
    for (int i = 0; i < n; i++) {
      String ans = sc.next();
      String correct = sc.next();

      // // デバック
      // System.out.println(ans);
      // System.out.println(correct);
      // System.out.println(ans == correct);

      // 文字の数が合わなければスキップ
      if (ans.length() != correct.length()) {
        continue;
      }

      // 完全一致でscore+2
      if (ans.equals(correct)) {
        score += 2;
        continue;
      }

      // 文字の一致数を確認するための配列を生成
      String[] ansArray = new String[ans.length()];
      String[] correctArray = new String[correct.length()];

      // 配列に格納
      ansArray = ans.split("");
      correctArray = correct.split("");

      // 一致数の確認
      int count = 0;
      for (int j = 0; j < ansArray.length; j++) {
        if (ansArray[j].equals(correctArray[j])) {
          count += 1;
        }
      }

      // 1文字違いならscore+1
      if (count == ansArray.length - 1) {
        score += 1;
      }
    }

    // 結果表示
    System.out.println(score);
    sc.close();
  }
}
