package JAVA.Set07;

public class CalcolaGiorniIfElse {

    public void calcolaGiorni(int mese){ // mese è month come verrà implementato nel metodo
        if(mese == 1 || mese == 3 || mese == 6 || mese == 7 || mese == 8 || mese == 10 || mese == 12){ // controllo - è sufficiente che una soltanto di queste condizioni sia vera
            System.out.println("Il mese inserito ha 31 giorni");
        } else if(mese == 2){
            System.out.println("Il mese inserito ha 28 o 29 giorni");
        } else if (mese == 4 || mese == 6 || mese == 9 || mese == 11){
            System.out.println("Il mese inserito ha 30 giorni");
        } else {
            System.out.println("Il mese inserito non esiste");
        }
    }
}
