package Java.basic.primer2;

public class CriticalHit {
  public static void main(String[] args) {
    int hit = (int) (Math.random() * 10 + 1);
    if (hit < 6) {
      System.out.println("スライムに" + hit + "のダメージを与えた");
    } else {
      System.out.println("クリティカルヒット!スライムに、100のダメージを与えた!!");
    }

    // 追加攻撃
    int add = (int) (Math.random() * 2 + 1);
    System.out.println("追加のサイコロは、" + add);
    if (add == 1) {
      System.out.println("追加攻撃!スライムに、10のダメージを与えた!!!");
    } else {
      System.out.println("追加攻撃に失敗!");
    }
  }
}