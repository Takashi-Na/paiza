package java.c_rank;

import java.util.Scanner;

/**
 * PointPayment
 */
public class PointPayment {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 初期のチャージされている金額
    // バスの乗車回数
    int money;
    int ridesNums;
    money = sc.nextInt();
    ridesNums = sc.nextInt();

    int point = 0;
    int fare;
    for (int i = 0; i < ridesNums; i++) {
      fare = sc.nextInt();

      // ポイント払いが可能な時の処理
      if (point >= fare) {
        point -= fare;
      // ポイント払いが不可能な時の処理
      } else {
        point += fare * 0.1;
        money -= fare;
      }

      // 結果表示
      System.out.println(money + " " + point);
    }

    sc.close();
  }
}