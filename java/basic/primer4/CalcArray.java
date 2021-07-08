package java.basic.primer4;

public class CalcArray {
  public static void main(String[] args) {
    int[] numbers = { 12, 34, 56, 78, 90 };
    int sum = 0;
    for (int i = 0; i < numbers.length; i++) {
      sum += numbers[i];
    }
    System.out.println(sum);
  }
}
