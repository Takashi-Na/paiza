package java.basic.primer2;

public class Omikuji {
  public static void main(String[] args) {
    int omikuji = (int) (Math.random() * 100 + 1);

    // 条件分岐
    if (omikuji >= 30) {
      System.out.println("omikujiの中身は" + omikuji + "なので大吉");
    } else {
      System.out.println("omikujiの中身は" + omikuji + "なので大凶");
    }
  }
}
