package Java.basic.primer1;

public class RandomDmg {
  public static void main(String[] args) {
    // 乱数を生成
    double dValue = Math.random() * 50 + 50;
    int dmg = (int) dValue;
    System.out.println("モンスターに、" + dmg + "のダメージを与えた");
  }
}