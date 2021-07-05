package java.basic.primer4;

public class DispArray {
  public static void main(String[] args) {
    String[] array = { "戦士", "侍", "僧侶", "魔法使い" };

    for (String job : array) {
      System.out.println(job);
    }
  }
}
