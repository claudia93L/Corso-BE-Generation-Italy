package JAVA.Set12;

public class Camicia {

    public int camiciaID = 0; 
    public String descrizione = "-descrizione richiesta-";
    public char codiceColore = 'U'; // R = Red, B = Blue, G = Green, U = Unset;
    public double prezzo = 0.0;
    public int quantita = 0; // diamo per scontato per semplicità disponibilità illimitate in magazzino

    public void display(){
        System.out.println("ID camicia: " + camiciaID);
        System.out.println("Descrizione: " + descrizione);
        System.out.println("Codice colore: " + codiceColore);
        System.out.println("Prezzo unitario: " + prezzo);
        System.out.println("Quantita' in carrello: " + quantita);
    }


}
