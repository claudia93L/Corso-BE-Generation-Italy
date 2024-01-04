package JAVA.Set09;

import java.util.Scanner; // importo util Scanner dall'API di Java

public class OroscopoCinese {
    
    public static void main(String[] args) {
        
        int[] anni = {1936, 1948, 1960, 1972, 1984, 1996, 2008}; // anni del Topo
        String[] segni = {"Topo", "Bufalo", "Tigre", "Coniglio", "Drago", "Serpente", "Cavallo", "Capra", "Scimmia", "Gallo", "Cane", "Maiale"};
        String intro = "Il tuo segno cinese e' ";
        Scanner input = new Scanner(System.in); // istanza di Scanner - input mi permette di acquisire stringhe da riga di comando, eventualmente da convertire - è sufficiente una sola istanza di scanner per tutto il file, che sarà poi richiamabile più volte
        System.out.print("In che anno sei nato/a? "); // chiedo l'anno di nascita all'utente - uso print per avere il cursore che lampeggia dove devo scrivere

        int base = input.nextInt(); // nextInt() converte la stringa immessa in un int (ossia la data di nascita dell'utente)
        
        // segue un etichetta ciclo: (nominata a piacere) - i più comuni sono inner e outer
        ciclo: for(int indexSegno = 0; indexSegno < segni.length; indexSegno++){ // scansiono l'array dei segni. Se l'array interno è falso, si incrementa e si passa al segno successivo

            for(int indexAnno = 0; indexAnno < anni.length; indexAnno++){ // scansiono l'array degli anni, confrontandoli con il mio anno di nascita inserito come input. se non lo trova, non è Topo ed incrementa l'anno

                if(base == anni[indexAnno] + indexSegno){ // confronto l'anno inserito dall'utente con l'indice ciclato degli anni del topo, e aggiungo il segno corrispondente tramite il suo indice
                    System.out.println(intro + segni[indexSegno]); // se combaciano, stampo
                    break ciclo; // se ho trovato il segno interrompo il for esterno tramite l'etichetta appostagli accanto
                }
            }   

        }
    }

}
