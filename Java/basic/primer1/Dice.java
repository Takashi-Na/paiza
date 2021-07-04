package java.basic.primer1;

public class Dice {
  public static void main(String[] args) {
    // 1~6の乱数を生成
    double dValue = Math.random() * 6 + 1;
    int num  = (int)dValue;
    System.out.println("サイコロの目は" + num + "です");
  }
}
