package JAVA.Set05;

// Creo istanze di avvio del progetto camicia

public class CamiciaTest {
    public static void main(String[] args){ // metodo di avvio del programma
        Camicia miaCamicia1 = new Camicia(); // dichiaro e creo un'istanza di Camicia in modalità compatta rispetto a Set02
        Camicia miaCamicia2 = new Camicia(); // dichiaro e creo un'altra istanza di Camicia
        // a questo punto del codice, le due istanze hanno i valori di default in tutti i campi, non essendo ancora state inizializzate le variabili per caratterizzare i due oggetti
        miaCamicia1.camiciaID = 2022; // assegno l'ID numerico a miaCamicia1, sovrascrivendo lo 0
        miaCamicia1.descrizione = "Camicia da uomo con taschino sul lato sinistro"; // sovrascrivo "-descrizione richiesta-"
        miaCamicia1.codiceColore = 'G'; // sovrascrivo 'U'
        miaCamicia1.prezzo = 45.00; // sovrascrivo 0.0
        miaCamicia1.pezziInMagazzino = 11; // sovrascrivo lo 0

        miaCamicia2.camiciaID = 1975; // assegno l'ID numerico a miaCamicia2, sovrascrivendo lo 0
        miaCamicia2.codiceColore = 'R';
        miaCamicia2.prezzo = 62.00;
        miaCamicia2.pezziInMagazzino = 6;

        miaCamicia1.mostraInfo();
        miaCamicia2.mostraInfo();

        Camicia miaCamicia3 = new Camicia();
        miaCamicia3.codiceColore = miaCamicia1.codiceColore; // assegno a miaCamicia3 lo stesso codice colore di miaCamicia1, rimangono memorie distinte
        miaCamicia3.mostraInfo();
    }


}