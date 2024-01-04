package JAVA.Esercizi.Cinema;

import java.util.ArrayList;

/*
 Una sala cinematografica è dotata di 300 posti suddivisi in 3 zone da 100 posti: sinistra, destra, centrale.

Realizzare un programma che assegni un posto allo spettatore, occupandolo con il numero del suo biglietto d'ingresso, che deve essere univoco, facendo in modo che gli spettatori siano equamente distribuiti automaticamente nelle tre zone della sala (esempi:
 7 spettatori saranno ripartiti 2 a sinistra, 3 al centro, 2 a destra;
 20 spettatori saranno ripartiti 7 a sinistra, 7 al centro, 6 a destra.

Stampare a fine "spettacolo" un riepilogo della quantità di posti assegnati in ciascuna zona della sala per verificarne la distribuzione equa in fase di assegnazione, nonché un totale sull'affluenza; esempio di riepilogo da mostrare su terminale:
 Sono stati assegnati 10 posti a sinistra, 11 posti al centro, 10 posti a destra, per un totale di 31 spettatori.
 */

public class SalaCinema {

    public int biglietti;
    public int bigliettiDisponibili = 300;

    ArrayList<Integer> zonaSinistra = new ArrayList<Integer>();
    ArrayList<Integer> zonaDestra = new ArrayList<Integer>();
    ArrayList<Integer> zonaCentrale = new ArrayList<Integer>();

    public void acquistaBiglietti(int biglietti) {

        if (biglietti >= 1 && biglietti <= bigliettiDisponibili) {

            if (biglietti == 1) {
                System.out.println("Hai acquistato " + biglietti + " biglietto");
                this.biglietti = biglietti;
            } else {
                System.out.println("Hai acquistato " + biglietti + " biglietti");
                this.biglietti = biglietti;
            }

        } else if (biglietti > bigliettiDisponibili) {
            System.out.println("Il numero di biglietti richiesti supera la nostra disponibilita'. Biglietti venduti: "
                    + bigliettiDisponibili);
            this.biglietti = bigliettiDisponibili;

        } else {
            System.out.println("Numero di biglietti non valido");
        }

    }

    // metodo per assegnare i posti equamente sulle tre zone 

    public void assegnaPosto() {

        int postiAssegnati;

        for(int i = 1; i <= biglietti; i++){  

            postiAssegnati = i % 3;

            if(postiAssegnati == 0) {
                zonaSinistra.add(i);
  
            } else if(postiAssegnati == 1) {
                zonaCentrale.add(i);
    
            } else if(postiAssegnati == 2){
                zonaDestra.add(i);
       
            }
       }

        // stampa ricevuta finale

        // versione migliore per colloqui
        
        System.out.println("***Riepilogo finale***");
        System.out.println();

        System.out.println("***Zona Sinistra***");
        System.out.print("Numeri biglietti: ");
        for(int postoSinistra : zonaSinistra){
            System.out.print(postoSinistra + " ");
        }
        System.out.println(" - Posti assegnati a sinistra: " + zonaSinistra.size());
        System.out.println();

        System.out.println("***Zona Centrale***");
        System.out.print("Numeri biglietti: ");
        for(int postoCentrale : zonaCentrale){
            System.out.print(postoCentrale + " ");
        }
        System.out.println(" - Posti assegnati al centro: " + zonaCentrale.size());
        System.out.println();

        System.out.println("***Zona Destra***");
        System.out.print("Numeri biglietti: ");
        for(int postoDestra : zonaDestra){
            System.out.print(postoDestra + " ");
        }
        System.out.println(" - Posti assegnati a destra: " + zonaDestra.size());

        System.out.println();
        System.out.println("Numero spettatori totali in sala: " + (zonaSinistra.size() + zonaCentrale.size() + zonaDestra.size()));


        /* versione alternativa 
        
        System.out.println("***Zona Sinistra***");
        System.out.println("Numeri biglietti " + zonaSinistra.toString().replace("[", "").replace("]", "") + " - Posti assegnati a sinistra: " + zonaSinistra.size());
        System.out.println();
        System.out.println("***Zona Centrale***");
        System.out.println("Numeri biglietti " + zonaCentrale.toString().replace("[", "").replace("]", "") + " - Posti assegnati al centro: " + zonaCentrale.size());
        System.out.println();
        System.out.println("***Zona Destra***");
        System.out.println("Numeri biglietti " + zonaDestra.toString().replace("[", "").replace("]", "") + " - Posti assegnati a destra: " + zonaDestra.size()); */
        

    }

}
