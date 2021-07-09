package java.basic.primer4;

import java.util.ArrayList;

public class AddToArrayList {
  public static void main(String[] args) {
    ArrayList<String> weapons = new ArrayList<String>();

    weapons.add("木の棒");
    weapons.add("鉄の剣");
    weapons.add("石斧");

    for (String weapon : weapons) {
      System.out.println(weapon);
    }
  }
}
