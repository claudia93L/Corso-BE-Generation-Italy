package JAVA.Esercizi.SegnoZodiacale;

public class SegnoZodiacaleTest {
    public static void main(String[] args) {
        int giorno = Integer.parseInt(args[0]);
        int mese = Integer.parseInt(args[1]);
        
        SegnoZodiacale mioSegnoZodiacale = new SegnoZodiacale();
        mioSegnoZodiacale.calcolaSegnoZodiacale(giorno, mese);
    }
}
