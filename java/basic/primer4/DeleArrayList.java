package java.basic.primer4;

import java.util.ArrayList;

public class DeleArrayList {
  public static void main(String[] args) {
    ArrayList<String> weapon = new ArrayList<String>();
    weapon.add("木の棒");
    weapon.add("鉄の棒");
    weapon.add("鉄の剣");
    weapon.add("銅の剣");
    
    // "鉄の剣"を削除
    weapon.remove(2);

    for (String item : weapon) {
      System.out.println(item);
    }
  }
}
