package java.basic.primer4;

public class ElementCount {
  public static void main(String[] args) {
    String str = "One cold rainy day when my father was a little boy he met an old alley cat on his street";
    
    // " "区切りで要素数を数える
    int count = str.split(" ").length;

    System.out.println(count);
  }
}
