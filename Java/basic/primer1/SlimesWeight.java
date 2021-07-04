package java.basic.primer1;

public class SlimesWeight {
  public static void main(String[] args) {
    int number = (int) (Math.random() * 10 + 1); // 匹数 1 ～ 10
    System.out.println("体重100キロのスライムが、" + number + "匹あらわれた。");

    // 体重計算
    int totalWeight = number * 100;
    System.out.println("スライムの合計体重は、" + totalWeight + "キロです。");
  }
}