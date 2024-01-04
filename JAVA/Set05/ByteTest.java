package JAVA.Set05;

public class ByteTest {
    public static void main(String[] args) {
        byte b1 = 1, b2 = 2, b3; // istruzione multipla, con separazione tramite virgola
        // casting significa abbassare i bit del tipo
        b3 = (byte)(b1 + b2); // devo fare casting perchè Java salva b1 + b2 come int a 32 bit
        // oppure...
        int b4 = b1 + b2; // b1 + b2 è un int salvato dentro un int
        System.out.println("b3 = " + b3 + "; b4 = " + b4);
    }
}