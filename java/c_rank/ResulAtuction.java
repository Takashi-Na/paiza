package java.c_rank;

import java.util.Scanner;

public class ResulAtuction {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    int price;
    int aBudget;
    int bBudget;
    price = sc.nextInt();
    aBudget = sc.nextInt();
    bBudget = sc.nextInt();
    sc.close();

    // System.out.println(price);
    // System.out.println(aBudget);
    // System.out.println(bBudget);

    String buyer = "A";
    while (true) {
      if (price <= aBudget - 10) {
        price += 10;
        buyer = "A";
      } else {
        break;
      }

      if (price <= bBudget - 1000) {
        price += 1000;
        buyer = "B";
      } else {
        break;
      }
    }
    System.out.println(buyer + " " + price);
  }
}
