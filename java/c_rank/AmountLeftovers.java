package java.c_rank;

import java.util.Scanner;

public class AmountLeftovers {
  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

    // 仕入れた量,生で売れた量,惣菜として売れた量
    double purchasedAmount;
    double soldOutRaw;
    double soldOutCook;

    purchasedAmount = sc.nextInt();
    soldOutRaw = sc.nextInt() * 0.01;
    soldOutCook = sc.nextInt() * 0.01;
    sc.close();
    
    // System.out.println(purchasedAmount);
    // System.out.println(soldOutRaw);
    // System.out.println(soldOutCook);

    // 惣菜にする量,残った量,四捨五入した残った量
    double sideDishAmount;
    double amountLeftovers;
    double roundingAmountLeftovers;

    sideDishAmount = purchasedAmount * (1 - soldOutRaw);
    amountLeftovers = sideDishAmount * (1 - soldOutCook);
    roundingAmountLeftovers = (double)(Math.round(amountLeftovers * 10000)) / 10000;

    // 結果表示
    System.out.println(roundingAmountLeftovers);
  }
}
