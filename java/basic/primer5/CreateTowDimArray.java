package java.basic.primer5;

public class CreateTowDimArray {
  public static void main(String[] args) {
    // 二次元配列を作成
  //<データ型> 名前 = newメソッド <データ型[要素数][要素数]> 
    int[][] array = new int[2][3];

    for (int[] item : array) {
      for (int num : item) {
        System.out.print(num);
      }
      System.out.println("");
    }
  }
}
