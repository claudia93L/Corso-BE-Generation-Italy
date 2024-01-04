package JAVA.Set09;

import java.util.ArrayList;

/* Test Array e ArrayList */

public class TestArray {

    public static void main(String[] args) {
        
        // riepiloogo su  ArrayList
        ArrayList<String> miaLista; // dichiarazione di un ArrayList
        miaLista = new ArrayList<String>(); // creazione di un'istanza di ArrayList

        miaLista.add("Alfa"); // inizio inizializzazione dell'istanza
        miaLista.add("Beta");
        miaLista.add("Gamma");
        miaLista.add("Delta");
        miaLista.add("Delta");
        miaLista.add("Eta"); // fine inizializzazione dell'istanza
        miaLista.remove(0); // rimuovo il primo elemento e gli altri scalano di posto
        miaLista.remove(miaLista.size()-1); // rimuovo l'ultimo elemento della lista 
        miaLista.remove("Delta"); // rimuovo il primo Delta dalla lista - per rimuoverli tutti, si dovrebbe utilizzare un ciclo o il metodo removeAll
        System.out.println("La mia lista di lettere greche e': ");

        // for avanzato - String greca su miaLista - greca prende l'elemento di miaLista, uno per volta
        for(String greca : miaLista){
            System.out.println(greca); // stampo miaLista sottoforma di elenco 
        }
        
        // riepilogo sugli Array monodimensionali

        String[] nomi = new String[5]; // dichiarazione e creazione di array
        nomi[0] = "Federico"; // inizio inizializzazione dell'array
        nomi[1] = "Daniele"; 
        nomi[2] = "Giovanni"; // non completo volutamente l'array

        String[] cognomi = {"Rossi", "Deluca", "Fornari"}; // creazione di array in modalità compatta
        System.out.println("I cognomi sono " + cognomi.length);
        System.out.println("I nomi sono " + nomi.length);
        System.out.println("La prima persona e' " + nomi[0] + " " + cognomi[0]);
        System.out.println("Il quarto nome e' " + nomi[3]); // cerchiamo di chiamare un valore che nell'array non è stato inserito


        // verifichiamo se ci sono elementi a sufficienza negli argomenti, previene eventuali dimenticanze negli input
        if(args.length >= 2){ // se args ha almento due elementi
            System.out.println(">>" + args[0] + ", " + args[1]);
        } else {
            System.out.println("Non ci sono sufficienti argomenti per la stampa di args");
        }

        /*  arraycopy è una funzione/metoto a 5 argomenti
         * 
         * 1° Object src: array da cui copiare elementi - args
         * 2° srcPos: posizione di inizio copia - 0
         * 3° Object dest: array di destinazione - nomi
         * 4° destPos: posizione di destinazione/inizio incollaggio - 1
         * 5° length: lunghezza degli elementi da incollare (contando da 1) - 1
        */
        System.arraycopy(args, 0, nomi, 1, 2);
        
        for(int i = 0; i < nomi.length; i++){
            System.out.println(nomi[i]);
        }

        // riepilogo sugli array bidimensionali

        int[][] vendite = new int[5][4];
        vendite[0][0] = 1000; // inizializzo l'array nel suo primo elemento
        System.out.println(vendite.length); // stampo il numero di righe
        System.out.println(vendite[2].length); // stampo il numero di colonne, [2] è a piacere, dato che ogni riga ha lo stesso numero di colonne
        vendite[4] = new int[5]; // cambio la dimensione del 5° array (indice[4]) di riga, e ne cancello di conseguenza il contenuto
        System.out.println(vendite[4].length); // stampo il numero di colonne della riga appena modificata

        // ArrayList di oggetti vari
        ArrayList<Object> matrice = new ArrayList<Object>(); // Object è la radice di tutte le classi - oggetto generico di Java, perciò nell'ArrayList posso inserire qualsiasi cosa
        matrice.add(new ArrayList<Boolean>());
        matrice.add("Mario");
        matrice.add(234);
        matrice.add(true);
        matrice.add(new int[10]);
        System.out.println("La matrice di elementi Object e': " + matrice);

    }
}
