package java.c_rank;

import java.util.Scanner;

public class RabbitAndCarrot {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 人参の数,糖度の基準値,許容誤差 の取得
    int num;
    int standardValue;
    int allowableError;
    num = sc.nextInt();
    standardValue = sc.nextInt();
    allowableError = sc.nextInt();

    // 人参の情報の配列を作成
    int[][] carrotsInfo = new int[num][2];
    for (int i = 0; i < num; i++) {
      // 質量,糖度 を取得
      int mass;
      int sugarContent;
      mass = sc.nextInt();
      sugarContent = sc.nextInt();
      
      // 配列に格納
      carrotsInfo[i][0] = mass;
      carrotsInfo[i][1] = sugarContent;
    }
    sc.close();
    
    // 
    int targetMass = 0;
    int targetNum = 0;
    int i = 0;

    for (int[] carrot : carrotsInfo) {
      int mass = carrot[0];
      int sugarContent = carrot[1];
      i += 1;

      if (sugarContent >= standardValue - allowableError && sugarContent <= standardValue + allowableError) {
        if (targetMass < mass) {
          targetMass = mass;
          targetNum = i;
        }
      }
    }
    
    if (targetNum == 0) {
      System.out.println("not found");
    } else {
      System.out.println(targetNum);
    }
  }
}
