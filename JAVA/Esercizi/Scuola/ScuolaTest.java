package JAVA.Esercizi.Scuola;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

public class ScuolaTest {
    
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        ArrayList<Studente> studenti = new ArrayList<Studente>();
        ArrayList<Docente> docenti = new ArrayList<Docente>();

        System.out.println("***Benvenuto sul programma scuola***");
        System.out.println();

        boolean chiediAncora = true;
        char sceltaIniziale = 'U'; // undefined
        char inserisciAncora = 'U'; // undefined

        do {
            System.out.print("Vuoi aggiungere uno studente (S) o un docente (D)? ");
            sceltaIniziale = input.next().toUpperCase().charAt(0);

            // scelta tra inserimento Studente o Docente
            switch(sceltaIniziale){

                case 'S': 
                    input.nextLine();
                    System.out.print("Inserisci nome: ");
                    String nomeStudente = input.nextLine();
    
                    System.out.print("Inserisci cognome: ");
                    String cognomeStudente = input.nextLine();

                    System.out.print("Inserisci anno di nascita: ");
                    int annoNascitaStudente = input.nextInt();
    
                    System.out.print("Inserisci classe: ");
                    int classe = input.nextInt();
    
                    System.out.print("Inserisci sezione: ");
                    char sezione = input.next().toUpperCase().charAt(0);
    
                    Studente nuovoStudente = new Studente(nomeStudente, cognomeStudente, annoNascitaStudente, classe, sezione);
                    studenti.add(nuovoStudente);
                    break;
    
                case 'D': 
                    input.nextLine();
                    System.out.print("Inserisci nome: ");
                    String nomeDocente = input.nextLine();
    
                    System.out.print("Inserisci cognome: ");
                    String cognomeDocente = input.nextLine();
    
                    System.out.print("Inserisci anno di nascita: ");
                    int annoNascitaDocente = input.nextInt();
    
                    input.nextLine();
    
                    System.out.print("Inserisci materia insegnata: ");
                    String materia = input.nextLine();
    
                    Docente nuovoDocente = new Docente(nomeDocente, cognomeDocente, annoNascitaDocente, materia);
    
                    docenti.add(nuovoDocente);
                    break;
                
                default:
                    System.out.println("Scelta non valida");
            }

            // chiedo se si vuole aggiungere un'altra persona
            System.out.println();
            System.out.print("Vuoi aggiungere un'altra persona (S/N)? ");
            inserisciAncora = input.next().toUpperCase().charAt(0); 
            
            if(inserisciAncora == 'N'){
                chiediAncora = false;
            }

        } while (chiediAncora);

        // stampa lista studenti
        System.out.println();
        System.out.println("***Lista studenti***");

        for(Iterator<Studente> i = studenti.iterator(); i.hasNext();){
            Studente studente = i.next();
            if(studente.getAnnoNascita() < 2012){
                i.remove();
            } else {
                System.out.println();
                studente.stampaLista();
            }    
        }

        // stampa lista docenti
        System.out.println();
        System.out.println("***Lista docenti***");

        for(Iterator<Docente> i = docenti.iterator(); i.hasNext();){
            Docente docente = i.next();
            if(docente.getAnnoNascita() < 1962){
                i.remove();
            } else {
                System.out.println();
                docente.stampaLista();
            }    
        }
        
        input.close();
    }

}
