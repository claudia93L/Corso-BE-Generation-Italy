package JAVA.Set07;

/*
 In questo esercizio, si crea una classe che, con l’ausilio di un costrutto if/else, restituisce la parte della giornata in base all’ora.
 creare una nuova classe Java Clock, dichiarare e inizializzare una variabile currentTime per questa classe, assegnandole un orario secondo la convenzione per cui 400 equivale alle 4:00, 1530 alle 15:30, ecc...
Creare un metodo displayPartOfDay() in Clock.
Utilizzando gli opportuni operatori relazionali e condizionali, raggruppare le ore del giorno secondo la seguente tabella affinché, in base al valore di CurrentTime, venga stampato il periodo corrispondente:
Ora del giorno - Periodo
Dalle 07:01 alle 12:00 - Mattina
Dalle 12:01 alle 17:00 - Pomeriggio
Dalle 17:01 alle 23:00 - Sera
Dalle 23:01 alle 07:00 - Notte
Compilare ed eseguire il programma verificandone il corretto funzionamento per le varie fasce orarie.
 */

public class Clock {

    public void displayPartOfDay(int currentTime){
        if(currentTime >= 701 && currentTime <= 1200){
            System.out.println("E' mattina");
        } else if(currentTime >= 1201 && currentTime <= 1700){
            System.out.println("E' sera");
        } else if(currentTime >= 1701 && currentTime <= 2300){
            System.out.println("E' notte");
        } else if(currentTime >= 2300 && currentTime <= 24 || currentTime >= 0000 && currentTime <= 700){
            System.out.println("E' notte fonda");
        } else {
            System.out.println("L'orario inserito non è valido");
        }
    }
}
