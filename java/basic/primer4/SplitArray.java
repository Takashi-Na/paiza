package java.basic.primer4;

public class SplitArray {
  public static void main(String[] args) {
    String team_str = "勇者,戦士,忍者,魔法使い";

    // 文字列を分割
    String[] team_array = team_str.split(",");

    for (String s : team_array) {
      System.out.println(s);
    }
  }
}
