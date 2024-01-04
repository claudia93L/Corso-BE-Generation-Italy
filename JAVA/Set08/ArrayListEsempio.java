package JAVA.Set08;

import java.util.ArrayList; // importiamo l'util di ArrayList dall'API di Java

public class ArrayListEsempio {
    
    public static void main(String[] args) {

        ArrayList<String> miaLista; // dichiarazione di istanza di ArrayList, il tipo di elementi nell'array va specificato tra <>
                            // cliccando sul quick fix dell'errore permette di importare automaticamente
        miaLista = new ArrayList<String>(); // creazione di istanza di ArrayList
                                            // <> compare automaticamente, e all'interno va il tipo di elementi inseriti nell'array
                                            
        // inizializzo miaLista
        miaLista.add("Giovanni"); // miaLista(0)
        miaLista.add("Salvatore"); // miaLista(1)
        miaLista.add("Daniele");
        miaLista.add("Christina");
        miaLista.add("Tommaso");
        miaLista.add("Francesca");
        miaLista.add("Daniele"); // miaLista(6)
        miaLista.add("Ivan"); // miaLista(7)

        // operazioni su miaLista

        miaLista.remove(0); // rimozione per indice: rimuovo l'elemento di miaLista avente indice 0, cioè "Giovanni", e farà scalare gli elementi a seguire
        miaLista.remove(miaLista.size() -1); // rimozione per indice: rimuovo l'ultimo elemento di miaLista, cioè il 2° "Daniele", tramite size() vede l'indice e ricava la dimensione così da poter rimuovere l'ultimo elemento, a prescindere dalla dimensione dell'array
        miaLista.remove("Daniele"); // rimozione per elemento: rimuovo il primo "Daniele" che Java trova

        // stampa di miaLista 

        System.out.println(miaLista); // stampa "grezza", nella quale sto stampando un'istanza (metodo che è meglio non utilizzare), da usare come prova

        for(int i = 0; i < miaLista.size(); i++){ 
            System.out.print(miaLista.get(i) + " - "); // stampa da presentare - get(i) preleva l'elemento (i) da miaLista
        }

    }
}
