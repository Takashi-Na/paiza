package java.basic.primer4;

import java.util.ArrayList;

public class UpdataArrayList {
  public static void main(String[] args) {
    ArrayList<String> weapon = new ArrayList<String>();
    weapon.add("木の棒");
    weapon.add("鉄の剣");
    weapon.add("サビた剣");

    // 上書き
    weapon.set(2, "石斧");

    for (String item : weapon) {
      System.out.println(item);
    }
  }
}
