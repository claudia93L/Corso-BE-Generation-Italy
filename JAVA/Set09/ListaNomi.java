package JAVA.Set09;

import java.util.ArrayList;

/*
 E’ richiesto di creare un metodo che utilizza un ciclo for avanzato per visualizzare i valori in un ArrayList di String, partendo da ListaNomi.

 Al già presente metodo impostaLista() che compila l’ArrayList e ne stampa la dimensione, aggiungere un nuovo metodo mostraNomi(), contenente un ciclo for avanzato per elaborare l’ArrayList.

 */

    public class ListaNomi {

        public ArrayList<String> listaDiNomi;
    
        public void impostaLista() {

            listaDiNomi = new ArrayList<String>();

            listaDiNomi.add("Clint Eastwood"); 
            listaDiNomi.add("Al Pacino"); 
            listaDiNomi.add("Kevin Costner"); listaDiNomi.add("Mel Gibson"); 

            System.out.println("Dimensione dell'ArrayList: " + listaDiNomi.size());
    } 

    public void mostraNomi(){

        System.out.println("Elenco nomi in lista: ");
        System.out.println(); // riga separatrice

        for(String listaNomi : listaDiNomi){

            System.out.println(listaNomi);
        }
    }
}