package java.basic.primer2;

/**
 * JudgeAlcohol
 */
public class JudgeAlcohol {
  public static void main(String[] args) {
    int age = (int) (Math.random() * 5 + 18);
    System.out.print(age + "才は");
    
    // 条件分岐
    if (age < 20) {
      System.out.println("飲酒不可");
    } else {
      System.out.println("飲酒可能");
    }
  }
}