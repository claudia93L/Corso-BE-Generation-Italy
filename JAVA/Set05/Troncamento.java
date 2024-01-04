package JAVA.Set05;

public class Troncamento {
    public static void main(String[] args) {
        int num1 = 70;
        int num2 = 80;
        byte num3 = (byte)(num1 + num2); // si sfora il range di valori contenibili da byte, pertanto si verificherà un troncamento
        System.out.println(num3);
    }
}
