package JAVA.Set13;

import java.util.Scanner;

/* Creare la classe DateTwoTest dove:
a. Creare e inizializzare un oggetto di tipo DateTwo.
b. Effettuare le assegnazioni dei valori ai campi di DateTwo tramite immissione di valori tramite l’array di String args[] (l'argomento da passare al “setter” sarà: Integer.parseInt(args[n]) con n pari a 0 per giorno, 1 per mese, 2 per anno), e visualizzarne i valori con un println() disponendo una formattazione adeguata (per esempio: 08/07/2022).
c. Gestire le situazioni anomale visualizzando messaggi di errore qualora si verifichino.
4. Salvare, compilare ed eseguire il programma verificandone il corretto funzionamento inserendo valori non corretti. */

public class DateTwoTest {

    public static void main(String[] args) {
        Scanner inputUtente = new Scanner(System.in);
        DateTwo miaData = new DateTwo();
        System.out.println("Inserisci data");

        System.out.print("Inserire il giorno: ");
        miaData.setGiorno(inputUtente.nextInt());
        inputUtente.nextLine();
        System.out.print("Inserire il mese: ");
        miaData.setMese(inputUtente.nextLine().toLowerCase());
        System.out.print("Inserire l'anno: ");
        miaData.setAnno(inputUtente.nextInt());
        System.out.println();
        miaData.mostraData();
        inputUtente.close();
    } 
}
