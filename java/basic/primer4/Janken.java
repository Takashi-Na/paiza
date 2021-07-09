package java.basic.primer4;

import java.util.Scanner;

public class Janken {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    // 入力取り込み
    String line = sc.nextLine();
    // ","区切りで配列に格納
    String[] janken = line.split(",");
    // 乱数の生成
    double rand = Math.random() * janken.length;
    // 表示
    System.out.println(janken[(int) rand]);
    sc.close();
  }
}
