package java.c_rank;

import java.util.Scanner;

public class MoveDistanceBlackPhone {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // データ取得
    String telephoneNum;
    telephoneNum = sc.nextLine();
    sc.close();

    // telephoneNumから"-"を削除し、配列に格納
    String[] telephoneNumArray;
    telephoneNumArray = telephoneNum.replace("-", "").replace("\n", "").split("");

    int moveDistane = 0;

    // // デバック
    for (String str : telephoneNumArray) {
      System.out.println(str);
    }

    // 計算
    for (String strNum : telephoneNumArray) {
      // 距離計算
      if (Integer.valueOf(strNum) == 0) {
        moveDistane += 12 * 2;
      } else {
        moveDistane += (Integer.valueOf(strNum) + 2) * 2;
      }
    }

    System.out.println(moveDistane);
  }
}
