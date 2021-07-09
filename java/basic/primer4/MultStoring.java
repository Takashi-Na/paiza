package java.basic.primer4;

import java.util.ArrayList;
import java.util.Scanner;

public class MultStoring {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    ArrayList<String> enemys = new ArrayList<String>();

    // 取り込むデータがある限り繰り返す
    while (sc.hasNextLine()) {
      enemys.add(sc.nextLine());
    }

    // 表示
    for (String enemy : enemys) {
      System.out.println(enemy);
    }
    sc.close();
  }
}
