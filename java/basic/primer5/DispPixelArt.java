package java.basic.primer5;

public class DispPixelArt {
  public static void main(String[] args) {

    int[][] letterA = { { 0, 0, 1, 1, 0, 0 },
                        { 0, 1, 0, 0, 1, 0 },
                        { 1, 0, 0, 0, 0, 1 },
                        { 1, 1, 1, 1, 1, 1 },
                        { 1, 0, 0, 0, 0, 1 },
                        { 1, 0, 0, 0, 0, 1 } };

    // ドットを表示
    for (int[] line : letterA) {
      for (int word : line) {
        if (word == 1) {
          System.out.print("@");
        } else {
          System.out.print(" ");
        }
      }
      System.out.println("");
    }
  }
}
