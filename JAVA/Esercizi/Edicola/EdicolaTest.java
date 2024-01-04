package JAVA.Esercizi.Edicola;

import java.util.Scanner;

public class EdicolaTest {

    /*
     gli input non si salvano in metodi getter ma setter.
Inoltre avendo scelto di usare gli array, devi indicare l'indice ove salvare il valore accettato, e quindi il metodo setter deve accogliere il valore e l'indice dell'array.
     */

    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        Edicola edicola = new Edicola();

        System.out.println("***Benvenuto sul programma Edicola***");
        System.out.println();
        
        for(int i = 0; i <= 5; i++){

            System.out.print("Titolo quotidiano ricevuto: ");
            String titoliQuotidiani = input.nextLine(); // creo una variabile nella quale salvare l'input dell'utente
            edicola.setQuotidiani(titoliQuotidiani, i); // passo come argomento l'input dell'utente e l'indice ciclato

            System.out.print("Quantita' copie ricevute: ");
            int quotidianiRicevuti = input.nextInt();
            edicola.setRicevuti(quotidianiRicevuti, i);

            System.out.print("Prezzo quotidiano ricevuto: ");
            double prezziQuotidiani = input.nextDouble();
            edicola.setPrezzi(prezziQuotidiani, i);

            System.out.print("Quantita' copie vendute: ");
            int quotidianiVenduti = input.nextInt();
            edicola.setVenduti(quotidianiVenduti, i);

            System.out.print("Percentuale aggio: ");
            double aggioQuotidiani = input.nextDouble();
            edicola.setAggio(aggioQuotidiani, i); 

            edicola.mostraInfo(i);

            input.nextLine();

        }    

        //edicola.stampaRicevutaNegoziante();

        input.close();

    }
}
