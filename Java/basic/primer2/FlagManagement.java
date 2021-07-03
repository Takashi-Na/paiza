package Java.basic.primer2;

public class FlagManagement {
  public static void main(String[] args) {
    double rand = (Math.random() * 10) + 1;
    int number = (int) rand;
    System.out.println("あなたの順位は" + number + "位です");

    boolean flag = number <= 3;
    // フラグ
    if (flag == true) {
      System.out.println("入賞おめでとう");
    }
  }
}
