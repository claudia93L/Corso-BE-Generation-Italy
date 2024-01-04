package JAVA.Set20;

import java.util.Scanner;

class DivisioneRadice {

    //throws autorizza il metodo a creare delle eccezioni
    static double div(int a, int b) throws Exception { // questo metodo puó lanciare eccezioni di sua iniziativa, coerenti con la situazione!
        
        if(b == 0) {
            // throw lancia le eccezioni
            throw new Exception("Impossibile dividere per zero!"); // eccezione: il controllo torna al caller (main())
        }

        if(a < 0){
            throw new Exception("Numeratore negativo"); // // eccezione: il controllo torna al caller (main())
        }

        // eseguiamo la radice quadrata del rapporto 
        return Math.sqrt(a/b); // sqrt() ha return double correttamente dichiarato nell'implementazione del metodo div()

    }
}

public class Eccezioni7 {

    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);

        System.out.print("Inserisci il numeratore: ");
        int numeratore = input.nextInt();
        System.out.print("Inserisci il denominatore: ");
        int denominatore = input.nextInt();
        input.close(); // chiudo lo Scanner

        try {
            System.out.println(DivisioneRadice.div(numeratore, denominatore)); // essendo "div" static, non si crea l'istanza della classe - tipo di ritorno double
        }
        catch(Exception exc){
            // recuperiamo i messaggi che viaggiano nelle eccezioni
            System.out.println(exc.getMessage()); // recupero e stampo l'argomento delle Exceptions lanciate dal worker "div"
        }

        
    }

}
