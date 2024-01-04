package JAVA.Set15;

public class Cane extends Pet {
    // scaffale dei prodotti
    String[] prodotti = {"1. Cibo secco 5kg", "2. Cibo secco 1kg", "3. Cibo umido 500g", "4. Cibo umido 80g",
    "5. Frontline cane 4 pipette", "6. Ciotola", "7. Gioco per pulizia denti", "8. Guinzaglio con collare", "9. Cuccia"};
    double[] prezzi = {33.00, 7.50, 4.00, 1.00, 18.50, 3.00, 4.00, 8.00, 99.00};

    public double mostraProdotti(){
        System.out.println("*** Articoli disponibili per cane ***");

        // mostro lo scaffale all'utente
        for(int i = 0; i < prodotti.length; i++){
            System.out.println(prodotti[i] + ": " + prezzi[i] + " euro cad.");
        }

        System.out.println();
        double totale = cassa(prodotti,prezzi); // passo al metodo cassa() l'intero scaffale
        return totale; // salvato in NegozioAnimali.java
    }
    
}
