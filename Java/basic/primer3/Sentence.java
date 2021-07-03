package Java.basic.primer3;

import java.util.Scanner;

public class Sentence {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String line = sc.next();
    sc.close();

    System.out.println(line);
  }
}