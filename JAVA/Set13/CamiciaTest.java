package JAVA.Set13;

import java.util.Scanner;

public class CamiciaTest {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in); // creo l'istanza di Scanner per gli input
        Camicia miaCamicia = new Camicia(); // creo l'istanza di Camicia
        System.out.println("*** Magazzini VestinJava ***");
        System.out.print("Inserire l'ID della camicia: ");
        miaCamicia.setCamiciaID(input.nextInt()); // passo al metodo set direttamente il valore immesso tramire Scanner (mi risparmio la variabile)
        // siccome il prossimo input è una String, devo eseguire un nextLine() "a vuoto"(questo passaggio è da fare per passare da un tipo primitivo ad una stringa, altrimenti non smaltisce l'invio e prende il buffer, dando stringa vuota)
        input.nextLine(); // mi serve per processare l'invio precedente, perchè nextInt() converte solo numeri
        System.out.print("Descrizione della camicia (minimo 10 caratteri): ");
        miaCamicia.setDescrizione(input.nextLine()); // anche in questo caso, non sono necessarie variabili intermedie
        System.out.print("Colore della camicia (R = rosso, B = blu, G = verde, W = bianco): ");
        miaCamicia.setCodiceColore(input.nextLine().charAt(0)); // non esiste nextChar, pertanto prelevo il primo char della String immessa, concatenando charAt() e indicando l'indice 0
        System.out.print("Prezzo unitario della camicia: ");
        miaCamicia.setPrezzo(input.nextDouble()); // nei numeri con la virgola, a seconda della macchina prende la virgola o il punto, e si dovrebbe controllare l'immissione dei decimali, e si potrebbe effettuare un replace per convertirlo a quello accettato dalla macchina
        System.out.print("Pezzi in magazzino: ");
        miaCamicia.setDisponibili(input.nextInt());
        System.out.print("Camicie acquistate: ");
        miaCamicia.setAcquistate(input.nextInt());
        System.out.println();
        System.out.println("Riepilogo ordine: ");
        miaCamicia.display(); // invoco tranquillamente display(), perchè gli accessi ai campi da visualizzare sono incapsulati
        input.close(); // chiudo il flusso di dati in ingresso (di Scanner)
    }
}
