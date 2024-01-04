package JAVA.Set15;

import java.util.ArrayList;
import java.util.Scanner;

public class Pet {
    // scaffale vuoto perchè cassa() lavora su array

    String[] prod;
    double[] prez;

    public double cassa(String[] prod, double[] prez){
        this.prod = prod;
        this.prez = prez;
        boolean ancora = true;
        double totaleParziale = 0.0;
        double totale = 0.0;
        String altri = "";

        Scanner input = new Scanner(System.in);

        ArrayList<String> Carrello;
        Carrello = new ArrayList<String>();

        do { // l'utente sta visualizzando lo scaffale per l'animale selezionato

            System.out.println("digitare il codice del prodotto desiderato: ");
            int codice = input.nextInt()-1;

            switch(codice){
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    System.out.println("Digitare la quantita' di " + prod[codice] + " desiderata: ");

                    int quanti = input.nextInt();

                    totaleParziale = prez[codice] * quanti;
                    totale += totaleParziale;

                    Carrello.add("Prodotto: " + prod[codice] + " - Quantita': " + quanti + " - Prezzo: " + totaleParziale + " euro");
                    System.out.println("Desideri altri prodotti (S/N)?: ");
                    altri = input.next().toUpperCase();
                    break;
                default:
                    System.out.println("Codice digitato errato.");
            }

            if(altri.charAt(0) == 'N'){
                ancora = false;
            }

        } while(ancora);

        input.close();
        System.out.println();
        System.out.println("*** Articoli nel carrello ***");

        for(String lettore : Carrello){
            // stampo gli acquisti sullo scontrino
            System.out.println(lettore);
        }

        return totale; // inviato da Cane.java o Gatto.java

    }
}
