package JAVA.Esercizi.Prenotazione;

import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;

/* DA ULTIMARE 
 - Alla scelta di una nuova prenotazione, devo poterla salvare nell'ArrayList creando una nuova istanza di Prenotazione
*/

public class PrenotazioneTest {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);
        ArrayList<Prenotazione> prenotazioni = new ArrayList<Prenotazione>();

        System.out.println("*** Benvenuto sul sistema di prenotazione del B&B Laguna Blu ***");
        System.out.println();

        boolean chiediAncora = true;
        // boolean idTrovato = false;
        char risposta;
        int idPrenotazione;
        System.out.print("Desideri effettuare una prenotazione (S/N)? ");
        risposta = input.next().toUpperCase().charAt(0);
        System.out.println();

        do {
            input.nextLine();
            if (risposta == 'S') {
                Prenotazione miaPrenotazione = new Prenotazione();
                System.out.print("Inserisci nome: ");
                miaPrenotazione.setNome(input.nextLine());

                System.out.print("Inserisci cognome: ");
                miaPrenotazione.setCognome(input.nextLine());

                System.out.print("Inserisci numero di telefono: ");

                try {
                    miaPrenotazione.setTelefono(input.nextLong());
                } catch (InputMismatchException exc) {
                    System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
                    input.nextLine();
                    miaPrenotazione.setTelefono(input.nextLong());
                }

                input.nextLine();

                System.out.print("Inserisci giorno di arrivo (GG): ");
                try {
                    miaPrenotazione.setGiornoIn(input.nextInt());
                } catch (InputMismatchException exc) {
                    System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
                    input.nextLine();
                    miaPrenotazione.setGiornoIn(input.nextInt());
                }
                input.nextLine();

                System.out.print("Inserisci mese di arrivo (es.Gennaio): ");
                miaPrenotazione.setMeseIn(input.nextLine().toLowerCase());

                System.out.print("Inserisci anno di arrivo (YYYY): ");
                try {
                    miaPrenotazione.setAnnoIn(input.nextInt());
                } catch (InputMismatchException exc) {
                    System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
                    input.nextLine();
                    miaPrenotazione.setAnnoIn(input.nextInt());
                }

                System.out.print("Inserisci giorno di partenza (GG): ");
                try {
                    miaPrenotazione.setGiornoOut(input.nextInt());
                } catch (InputMismatchException exc) {
                    System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
                    input.nextLine();
                    miaPrenotazione.setGiornoOut(input.nextInt());
                }
                input.nextLine();

                System.out.print("Inserisci mese di partenza (es.Gennaio): ");
                miaPrenotazione.setMeseOut(input.nextLine().toLowerCase());

                System.out.print("Inserisci anno di partenza (YYYY): ");
                try {
                    miaPrenotazione.setAnnoOut(input.nextInt());
                } catch (InputMismatchException exc) {
                    System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
                    input.nextLine();
                    miaPrenotazione.setAnnoOut(input.nextInt());
                }

                // salvo la prenotazione nell'array
                prenotazioni.add(miaPrenotazione);
                System.out.println();
                System.out.println("Grazie! Il tuo ID di prenotazione e': " + prenotazioni.indexOf(miaPrenotazione));

                System.out.println();
                System.out.print("Vuoi effettuare un'altra prenotazione (S/N)? ");
                risposta = input.next().toUpperCase().charAt(0);

                if (risposta == 'N') {

                    // ricerca prenotazione
                    do {
                        System.out.println();
                        System.out.print("Desideri cercare una prenotazione (S/N)? ");
                        risposta = input.next().toUpperCase().charAt(0);

                        if (risposta == 'S') {
                            try {
                                System.out.print("Cerca prenotazione tramite ID: ");
                                idPrenotazione = input.nextInt();

                                // DA SISTEMARE
                                // stampa soltanto la prenotazione con indice 0 - se inserisco l'indice di un'altra prenotazione esistente non la trova e chiede nuovamente se si vuole cercare una prenotazione
                                
                                for (Prenotazione prenotazione : prenotazioni) {
                                    if (prenotazioni.indexOf(prenotazione) == idPrenotazione) {
                                        System.out.println("La prenotazione con ID " + idPrenotazione + " e:");
                                        prenotazione.stampaPrenotazione();
                                    } else {
                                        break;
                                    }
                                }
                            } catch (ArrayIndexOutOfBoundsException exc) {
                                System.out.print("La prenotazione cercata e' inesistente. Cerca ancora: ");
                                input.nextLine();
                                idPrenotazione = input.nextInt();
                            }
                        } else if (risposta == 'N') {
                            System.out.println("D'accordo! Il programma verra' chiuso.");
                            System.exit(0);
                        }

                    } while (chiediAncora);

                } else {
                    System.out.println();
                }

            } else if (risposta == 'N') {
                System.out.println("D'accordo! Il programma verra' chiuso.");
                System.exit(0);
            }

        } while (chiediAncora);

    }

}
