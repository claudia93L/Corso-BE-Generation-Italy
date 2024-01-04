package JAVA.Set07;

public class CalcolaGiorniSwitch {

    public void calcolaGiorni(int mese){
        switch(mese){
            case 1: 
            case 3:
            case 5:
            case 7:
            case 8: 
            case 10:
            case 12: 
                System.out.print("Il mese inserito ha 31 giorni");
                break; // evito di cercare ulteriormente perchè se sono qui, ho trovato la corrispondenza
            case 2:
                System.out.println("Il mese inserito ha 28 o 29 giorni");
                break; // devo rimettere il break perchè se sono qui non sono passato da rigo 14
            case 4:
            case 6:
            case 9:
            case 11:
                System.out.println("Il mese inserito ha 30 giorni");
                break; // devo rimettere il break perchè se sono qui non sono passato nè da rigo 14, nè da rigo 17
            default: // equivale a un else senza condizione if
                System.out.println("Il mese inserito non esiste!");
        }
    }
}
