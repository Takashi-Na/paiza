package java.b_rank;

import java.util.Scanner;

/**
 * TaxiesFee
 */
public class TaxiesFee {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // タクシーの種類,乗る距離,を取得
    int taxiType = sc.nextInt();
    int distance = sc.nextInt();

    int[] taxiFee = new int[taxiType];

    for (int i = 0; i < taxiType; i++) {
      // 初乗り距離,初乗り料金,加算距離,加算料金,の入力を取得
      int firstDistance = sc.nextInt();
      int firstFee = sc.nextInt();
      int addDistance = sc.nextInt();
      int addFee = sc.nextInt();

      int fee = firstFee;
      int billingDistance = distance - firstDistance;

      while (billingDistance >= 0) {
        billingDistance -= addDistance;
        fee += addFee;
      }

      // System.out.println(fee);

      // 料金を配列に代入
      taxiFee[i] = fee;
    }

    // for (int fee : taxiFee) {
    // System.out.println(fee);
    // }

    // 初期化
    int intMax = taxiFee[0];
    int intMin = taxiFee[0];

    // taxiFee配列から最大値と最小値を取得
    for (int i : taxiFee) {
      if (intMax < i) {
        intMax = i;
      }

      if (intMin > i) {
        intMin = i;
      }
    }

    // 結果表示
    System.out.println(intMin + " " + intMax);

    sc.close();
  }
}