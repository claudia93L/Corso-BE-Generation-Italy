package JAVA.Set09;

public class CicloConBreak {
    
    public static void main(String[] args) {
        
        int punteggioMin = 12;
        boolean superato = false;
        int[] punteggi = {4, 6, 8, 12, 34, 9};

        // for avanzato (forEach) per scansionare punteggi
        for(int punteggioSingolo : punteggi){ // punteggioSingolo assume ciascun valore dell'array punteggi, non gli indici

            // voglio verificare se in punteggi c'è un valore superiore a punteggioMin
            if(punteggioSingolo > punteggioMin){
                System.out.println(punteggioSingolo); // stampa il valore che supera punteggioMin
                superato = true;
                break; // trovato il valore cercato, non scansiono oltre l'array punteggi, interrompo il for
            }
        }
        
        System.out.println("Il valore e' stato superato almeno una volta? " + superato);
    }
}
