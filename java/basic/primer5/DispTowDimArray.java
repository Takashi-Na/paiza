package java.basic.primer5;

public class DispTowDimArray {
  public static void main(String[] args) {
    String[][] array = { { "勇者", "忍者" }, { "武士", "戦士" }, { "僧侶", "魔法使い" } };

    // arrayの全ての要素を出力
    for (String[] jobs : array) {
      for (String job : jobs) {
        System.out.println(job);
      }
    }
  }
}
