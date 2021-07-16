package java.c_rank;

import java.util.ArrayList;
import java.util.Scanner;

public class CalcNoDigitup {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    ArrayList<Integer> ans = new ArrayList<>();

    // 数字取得
    int inputNum1 = sc.nextInt();
    int inputNum2 = sc.nextInt();

    // 桁の確認
    int num1Len = String.valueOf(inputNum1).length();
    int num2Len = String.valueOf(inputNum2).length();

    // 桁の多い方のみ取得
    int numLen;
    if (num1Len > num2Len) {
      numLen = num1Len;
    } else {
      numLen = num2Len;
    }

    // 0埋めで桁の多い方に合わせる
    String num1String = String.format("%0" + numLen + "d", inputNum1);
    String num2String = String.format("%0" + numLen + "d", inputNum2);

    // 各位を配列に格納
    String[] num1Array = num1String.split("");
    String[] num2Array = num2String.split("");

    // 繰り上がらない様に計算してans配列に格納
    for (int i = 0; i < numLen; i++) {
      ans.add((Integer.valueOf(num1Array[i]) + Integer.valueOf(num2Array[i])) % 10);
    }

    // 結果表示
    for (Integer num : ans) {
      System.out.print(num);
    }

    sc.close();
  }
}
