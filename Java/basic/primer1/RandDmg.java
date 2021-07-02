package Java.basic.primer1;

public class RandDmg {
  public static void main(String[] args) {
    double rand = Math.random() * 50 + 50;
		int number = (int)rand;
		System.out.println("モンスターに、" + number + "のダメージを与えた");
  }
}
