package JAVA.Set13;

import java.util.Scanner;

public class CamiciaCostruttoreTest {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in); // creo l'istanza di Scanner per gli input
        
        System.out.println("*** Magazzini VestinJava ***");
        System.out.print("Inserire l'ID della camicia: ");
        int camiciaID = input.nextInt(); // salvo l'input dell'utente in una variabile - utilizzando il costruttore, abbiamo necessità di un passaggio intermedio
        // siccome il prossimo input è una String, devo eseguire un nextLine() "a vuoto"(questo passaggio è da fare per passare da un tipo primitivo ad una stringa, altrimenti non smaltisce l'invio e prende il buffer, dando stringa vuota)
        input.nextLine(); // mi serve per processare l'invio precedente, perchè nextInt() converte solo numeri
        System.out.print("Descrizione della camicia (minimo 10 caratteri): ");
        String descrizione = input.nextLine(); // salvo l'input dell'utente in una variabile
        System.out.print("Colore della camicia (R = rosso, B = blu, G = verde, W = bianco): ");
        char codiceColore = input.nextLine().charAt(0); // non esiste nextChar, pertanto prelevo il primo char della String immessa, concatenando charAt() e indicando l'indice 0
        System.out.print("Prezzo unitario della camicia: ");
        double prezzo = input.nextDouble(); // nei numeri con la virgola, a seconda della macchina prende la virgola o il punto, e si dovrebbe controllare l'immissione dei decimali, e si potrebbe effettuare un replace per convertirlo a quello accettato dalla macchina
        System.out.print("Pezzi in magazzino: ");
        int disponibili = input.nextInt(); // salvo l'input dell'utente in una variabile
        System.out.print("Camicie acquistate: ");
        int acquistate = input.nextInt(); // salvo l'input dell'utente in una variabile

        System.out.println();

        // rispetto all'esempio di CamiciaTest.java di oggi, qui utilizzo più memoria heap (temporanea) per le variabili del main, ma invio gli argomenti una volta sola - scegliere come scrivere è preferenziale
        CamiciaCostruttore miaCamicia = new CamiciaCostruttore(camiciaID, descrizione, codiceColore, prezzo, disponibili, acquistate); // creo l'istanza di CamiciaCostruttore, a cui passo le variabili in cui sono salvati i rispettivi input, da inserire come argomenti

        System.out.println("Riepilogo ordine: ");
        miaCamicia.display(); // invoco tranquillamente display(), perchè gli accessi ai campi da visualizzare sono incapsulati
        input.close(); // chiudo il flusso di dati in ingresso (di Scanner)
    }
    
}
