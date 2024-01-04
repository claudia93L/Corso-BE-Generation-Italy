package JAVA.Set05;

// Questo è il progetto di un oggetto classe camicia

public class Camicia {
    public int camiciaID = 0;
    public String descrizione = "-descrizione richiesta-";
    public char codiceColore = 'U'; // U di Unset - R = red, B = blue, G = green
    public double prezzo = 0.0; // double si utilizza per numeri decimali
    public int pezziInMagazzino = 0;

    public void mostraInfo() {
        System.out.println("Sono presenti in magazzino " + pezziInMagazzino + " camicie con identificativo " + camiciaID + ", di colore " + codiceColore + ", avente descrizione: " + descrizione + ", e prezzo " + prezzo + " euro");
    }
}
