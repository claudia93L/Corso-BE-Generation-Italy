package JAVA.Set07;

public class CalcolaGiorniTest {
    public static void main(String[] args) {
        int mese = Integer.parseInt(args[0]);
        CalcolaGiorniSwitch calcola = new CalcolaGiorniSwitch();
        calcola.calcolaGiorni(mese); // month nel metodo implementato si chiama mese
    }
}
