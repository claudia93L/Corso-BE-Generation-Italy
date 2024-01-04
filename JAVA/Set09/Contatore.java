package JAVA.Set09;

/*
 creare la classe Contatore che utilizza un ciclo for per una certa sequenza di numeri multipli di 12 da 0 a 100.
Risultato atteso: 12 24 36 48 60 72 84 96
 */

public class Contatore {

    public int numero = 12;    
    public int numMolt = 1;
    public int risultato;

    public void mostraContatore(){
       
        for(int risultato = 0; risultato < 100; risultato++){

            risultato = numero * numMolt;
            numMolt++;

            if(risultato > 100){
                break;
            }
            
            System.out.print(risultato + " ");
        }
    }
}
