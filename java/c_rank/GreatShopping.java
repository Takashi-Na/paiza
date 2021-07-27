package java.c_rank;

import java.util.Scanner;

public class GreatShopping {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 購入商品の数の取得
    int itemsNum;
    itemsNum = sc.nextInt();
    
    // 購入製品の配列を生成
    int[][] itemsArray = new int[itemsNum][2];
    
    // 購入商品の取得
    for (int i = 0; i < itemsArray.length; i++) {
      int itemType;
      int itemPrice;

      itemType = sc.nextInt();
      itemPrice = sc.nextInt();

      itemsArray[i][0] = itemType;
      itemsArray[i][1] = itemPrice;
    }

    // 各種金額の変数を生成
    double foodPrice = 0;
    double booksPrice = 0;
    double clothingPrice = 0;
    double othersPrice = 0;

    // 合計を算出
    for (int[] items : itemsArray) {
      if (items[0] == 0) {
        foodPrice += items[1];
      } else if (items[0] == 1) {
        booksPrice += items[1];
      } else if (items[0] == 2) {
        clothingPrice += items[1];
      } else if (items[0] == 3) {
        othersPrice += items[1];
      }
    }

    // 10の位以下切り捨て
    foodPrice = Math.floor(foodPrice / 100) * 100;
    booksPrice = Math.floor(booksPrice / 100) * 100;
    clothingPrice = Math.floor(clothingPrice / 100) * 100;
    othersPrice = Math.floor(othersPrice / 100) * 100;

    // System.out.println(foodPrice);
    // System.out.println(booksPrice);
    // System.out.println(clothingPrice);
    // System.out.println(othersPrice);

    // 各種ポイントの変数を生成
    int foodPoint;
    int booksPoint;
    int clothingPoint;
    int othersPoint;

    // 各種ポイントを算出
    foodPoint = (int) (foodPrice * 0.05);
    booksPoint = (int) (booksPrice * 0.03);
    clothingPoint = (int) (clothingPrice * 0.02);
    othersPoint = (int) (othersPrice * 0.01);

    // System.out.println("各種ポイント");
    // System.out.println(foodPoint);
    // System.out.println(booksPoint);
    // System.out.println(clothingPoint);
    // System.out.println(othersPoint);

    // ポイントの合計を計算
    int totalPoint = foodPoint + booksPoint + clothingPoint + othersPoint;

    // 表示
    System.out.println(totalPoint);

    sc.close();
  }
}
