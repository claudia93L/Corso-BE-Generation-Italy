package JAVA.Set07;

/*
 In questo esercizio, si crea una classe che valuta un campo numerico per determinare il giorno della settimana corrispondente a un numero, con l’ausilio di un costrutto if/else.
Partendo dalla classe (fornita) DateTwoTest:
creare una nuova classe Java DateTwo, dichiarare e inizializzare una variabile dayNumber per questa classe, assegnandole un valore compreso tra 1 e 7 (inclusi) dove 1 rappresenta il lunedì, 7 la domenica, ecc... Creare quindi un metodo displayDay() in DateTwo che gestisca il valore di dayNumber .
a. Utilizzare un if/else per controllare il valore di dayNumber sfruttando il più opportuno operatore relazionale. In ogni blocco if/else, predisporre la stampa del giorno della settimana corrispondente a quel dayNumber.
b. Visualizzare un messaggio di errore se si trova un numero non valido (ultimo else).
c. Compilare ed eseguire il programma usando dayNumber validi e non.
 */

public class DateTwo {
    
    public void displayDay(int dayNumber){

        if(dayNumber == 1){
            System.out.println("Il giorno selezionato è Lunedi'");
        } else if(dayNumber == 2){
            System.out.println("Il giorno selezionato è Martedi'");
        } else if(dayNumber == 3){
            System.out.println("Il giorno selezionato è Mercoledi'");
        } else if(dayNumber == 4){
            System.out.println("Il giorno selezionato è Giovedi'");
        } else if(dayNumber == 5){
            System.out.println("Il giorno selezionato è Venerdi'");
        } else if(dayNumber == 6){
            System.out.println("Il giorno selezionato è Sabato");
        } else if(dayNumber == 7){
            System.out.println("Il giorno selezionato è Domenica");
        } else {
            System.out.println("Il giorno selezionato non esiste!");
        }
    }
}
