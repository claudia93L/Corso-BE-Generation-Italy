package JAVA.Set02;

public class Camicia { // nome classe uguale a nome file
    // elenco attributi, cioè variabili o campi
    public int camiciaID = 0; // ID di default della camicia
    public String descrizione = "-descrizione richiesta-";

    // codici colore consentiti: R = red, B = blue, G = green, U = unset (non selezionato)
    public char codiceColore = 'U'; // inizialmente la camicia non ha un colore assegnato - char si scrive tra gli apici
    public double prezzo = 0.0; // prezzo di default
    public int pezziInMagazzino = 0; // numero pezzi in magazzino di default
    // fine elenco attribuiti/variabili (dentro o fuori da un metodo)/campi (tutte le variabili fuori da un metodo)

    // metodo con tipo di ritorno void, perchè non restituirà nulla
    public void mostraInfo() { // modifier public, perchè il metodo dev'essere chiamabile dall'esterno
        // per usare println() devo richiamarlo dal suo package System, mentre .out indicia che è un output
        System.out.println("ID della camicia:" + camiciaID); // stampa il contenuto della parentesi e va automaticamente a capo
        System.out.println("Descrizione: " + descrizione);
        System.out.println("Codice colore: " + codiceColore);
        System.out.println("Prezzo unitario: " + prezzo + " euro");
        System.out.println("Quantita' disponibile: " + pezziInMagazzino); // non tutti i compilatori leggono bene le lettere accentate, quindi le scriviamo con l'apice
    } 


}