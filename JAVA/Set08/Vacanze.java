package JAVA.Set08;

public class Vacanze {

    int anniDiServizio; // dichiaro variabile
    int [] giorniVacanze; // dichiaro array

    public void setVacanze(){
        giorniVacanze = new int[4]; // inizializzo array
        giorniVacanze[0] = 10; // attribuisco i valori all'array
        giorniVacanze[1] = 15;
        giorniVacanze[2] = 20;
        giorniVacanze[3] = 25; 
    }

    public void mostraGiorniVacanze(){

        if(anniDiServizio >= 0 && anniDiServizio < 1){
            System.out.println("Ti spettano " + giorniVacanze[0] + " giorni di vacanza!");
        } else if(anniDiServizio >= 1 && anniDiServizio <= 3){
            System.out.println("Ti spettano " + giorniVacanze[1] + " giorni di vacanza!");
        } else if(anniDiServizio >= 4 && anniDiServizio <= 5){
            System.out.println("Ti spettano " + giorniVacanze[2] + " giorni di vacanza!");
        } else if(anniDiServizio > 5){
            System.out.println("Ti spettano " + giorniVacanze[3] + " giorni di vacanza!");
        } else {
            System.out.println("Errore! Anni di servizio inseriti non validi");
        }
    }
}
