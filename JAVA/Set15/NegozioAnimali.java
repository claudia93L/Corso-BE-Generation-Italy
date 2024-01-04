package JAVA.Set15;

import java.util.Scanner;

public class NegozioAnimali {
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
         
        double totaleComplessivo = 0.0;
        boolean ancora = true;
        System.out.println("*** Benvenuto/a nel nostro Pet Shop ***");

        do {
            System.out.println("Vuoi acquistare per un cane (C) o per un gatto (G)?");
            String animale = input.nextLine().toUpperCase();

            // switch dove effettuo gli acquisti

            switch(animale.charAt(0)){
                // faccio lo switch sull'iniziale, in modo da gestire sia C e G, che CANE e GATTO
                case 'C': // se voglio acquistare per un cane, ne creo un'istanza
                    Cane mioCane = new Cane();
                    double totaleCane = mioCane.mostraProdotti(); // da mostraProdotti() scelgo l'articolo e salvo il prezzo in totaleCane
                    totaleComplessivo += totaleCane; // aggiorno il prezzo totale
                    break;
                case 'G': // se voglio acquistare per un gatto, ne creo un'istanza
                Gatto mioGatto = new Gatto();
                double totaleGatto = mioGatto.mostraProdotti(); // da mostraProdotti() scelgo l'articolo e salvo il prezzo in totaleGatto
                totaleComplessivo += totaleGatto;
                break;
            default: 
                System.out.println("Codice digitato errato");
            }

            System.out.println("Desideri acquistare altro (S/N): " );
            String altri = input.nextLine().toUpperCase();

            if(altri.charAt(0) == 'N'){
                ancora = false;
            }
        } while(ancora);

        System.out.println();
        System.out.println("*** Scontrino fiscale ***");
        System.out.println("Totale da pagare: " + totaleComplessivo + " euro");
        System.out.println("Grazie, arrivederci!");
        input.close();
        
    }
}
