package java.c_rank;

import java.util.Scanner;

public class JudgeRightTriangle {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
    int bottom;
    int height;
    bottom = sc.nextInt();
    height = sc.nextInt();
    sc.close();

    int count = 0;

    for (int i = 1; i < bottom; i++) {
      for (int j = 1; j < height; j++) {
        double obliqueLine = Math.sqrt(Math.pow(i, 2) + Math.pow(j, 2));
        int intObliqueLine = (int)(obliqueLine);
        if (obliqueLine - intObliqueLine == 0) {
          count += 1;
        }
      }
    }
    
    System.out.println(count);
  }
}
