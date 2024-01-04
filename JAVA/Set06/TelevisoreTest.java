package JAVA.Set06;

// sarebbe il nostro Telecomando
public class TelevisoreTest {
    public static void main(String[] args) {
        // istanza
        Televisore telecomando1 = new Televisore();
        Televisore telecomando2 = new Televisore();
        // in questo momento ho due telecomandi su due televisori

        telecomando1.acceso = true;
        telecomando2.acceso = true;
        telecomando1.pollici = 27;
        telecomando2.pollici = 32;
        telecomando1.volume = 66;
        telecomando1.cambiaCanale("Rai 1"); // assegnamo il valore ad emittente tramite l'argomento del metodo cambiaCanale
        System.out.println("Scheda telecomando 1");
        telecomando1.stampaInfo();
        System.out.println("Scheda telecomando 1");
        telecomando2.stampaInfo();
        telecomando1 = telecomando2; // questa istruzione clona telecomando2 su telecomando 1, impedendoci di andare a modificare individualmente i valori di telecomando1, che d'ora in avanti clonerà telecomando2
        telecomando2.cambiaCanale("Canale 5");
        System.out.println("Scheda telecomando 1");
        telecomando1.stampaInfo();
    }
}

