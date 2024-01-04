package JAVA.Set12;

/* 
Progettare una classe che simuli un telefono Cellulare con contratto a ricarica, dotato di due variabili d'istanza: credito disponibile (iniziale 20,0€) e numero chiamate effettuate (iniziale 0).
Attraverso opportuni metodi effettuare le seguenti operazioni:
1. Ricaricare il credito di un importo a piacere;
2. Effettuare una chiamata di un numero a piacere di
minuti;
3. Aggiornare il credito disponibile sulla base di una
tariffa di 0,20 centesimi/minuto, e incrementare il
numero di chiamate effettuate;
4. Visualizzare credito disponibile e numero chiamate
effettuate (con metodi distinti);
5. Azzerare il numero di chiamate e visualizzarlo
nuovamente. 
*/

public class Cellulare {

    public double creditoDisponibile = 0;
    public int numeroChiamateEffettuate = 0;

    // ricarico il cellulare, aumentando il credito disponibile

    public void ricaricaCredito(int importoRicarica){

        creditoDisponibile += importoRicarica;
        System.out.println("La ricarica effettuata e' pari a " + importoRicarica + " euro, e il totale del credito disponibile e' di " + creditoDisponibile + " euro.");
    }

    // calcolo il costo al minuto di ciascuna chiamata, ed incremento le chiamate di uno ad ogni chiamata del metodo

    public void nuovaChiamata(double tariffaAlMinuto){
        
        double minutiChiamata = (int)(Math.random() * 60 + 1); // limito il generatore a chiamate di max 60min, e un min di 1 min
        double costoChiamata = minutiChiamata * tariffaAlMinuto;
        creditoDisponibile -= costoChiamata;
        numeroChiamateEffettuate++;

        System.out.println("L'ultima chiamata e' durata " + minutiChiamata + " minuti. Il costo e' di " + costoChiamata + " euro.");

    }

    // mostro il credito disponibile

    public void mostraCredito(){
        System.out.println("Il tuo credito residuo e' di " + creditoDisponibile + " euro");
    }

    // mostro il totale delle chiamate effettuate

    public void mostraChiamate(){

        if(numeroChiamateEffettuate == 0){
            System.out.println("Oggi non hai effettuato alcuna chiamata.");
        } else {
            System.out.print("Hai effettuato " + numeroChiamateEffettuate + " chiamat");

            if (numeroChiamateEffettuate == 1) {
                System.out.println("a.");
            } else {
                System.out.println("e.");
            }
         }   
    }

    public void azzeraChiamate(){
        numeroChiamateEffettuate = 0;
    }
 
}
