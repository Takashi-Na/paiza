package java.basic.primer3;

import java.util.Scanner;

public class DispLenInput {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int len = sc.nextInt();
    for (int i = 0; i < len; i++) {
      String job = sc.next();
      System.out.println(job);
    }
    sc.close();
  }
}
