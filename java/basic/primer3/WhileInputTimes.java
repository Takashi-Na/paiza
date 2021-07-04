package java.basic.primer3;

import java.util.Scanner;

public class WhileInputTimes {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    int num = sc.nextInt();
    sc.close();

    for (int i = 0; i < num; i++) {
      System.out.println("スライムが現れた");
    }
  }
}
