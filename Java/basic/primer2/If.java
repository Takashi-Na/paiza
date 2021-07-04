package java.basic.primer2;

public class If {
  public static void main(String[] args) {
    int number = ((int) (Math.random() * 3 + 1)) * 100;
    System.out.println("あなたの得点は" + number + "ポイントです");
    
    // 条件分岐
    if (number == 300) {
      System.out.println("おめでとう！");
    } else {
      System.out.println("ざんねん！");
    }
  }
}
