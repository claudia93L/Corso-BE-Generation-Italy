package JAVA.Set12;

import java.util.Scanner;

/* Considera di aggiungere un menù di navigazione tramite Scanner, dove digitando vari numeri si avvia uno dei metodi per ricaricare, chiamare, visualizzare credito */

public class CellulareTest {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        Cellulare cellulareUno = new Cellulare();

        cellulareUno.creditoDisponibile = 20;

        // lavorare sulla pulsantiera
        System.out.println("Ciao, quale operazione desideri effettuare?");
        System.out.println("Premi 1 per effettuare una ricarica");
        System.out.println("Premi 2 per chiamare");
        System.out.println("Premi 3 per visualizzare il credito disponibile");

        cellulareUno.ricaricaCredito(15);
        cellulareUno.nuovaChiamata(0.20);

        cellulareUno.mostraChiamate();
        cellulareUno.mostraCredito();

        cellulareUno.nuovaChiamata(0.20);
        cellulareUno.mostraChiamate();
        cellulareUno.mostraCredito();

        cellulareUno.ricaricaCredito(10);

        cellulareUno.azzeraChiamate();
        cellulareUno.mostraChiamate();
        cellulareUno.mostraCredito();

        input.close();

    }
}
