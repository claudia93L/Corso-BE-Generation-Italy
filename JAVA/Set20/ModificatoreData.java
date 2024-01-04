package JAVA.Set20;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ModificatoreData {
    Date miaData; // dichiaro variabile 
    SimpleDateFormat dataSemplice = new SimpleDateFormat("dd/MM/yyyy"); // creo istanza data semplice

    public void analizzaData(String dataString){ // creo il metodo per analizzare la data e passo come parametro la stringa

        try {
            String dataFormattata;
            miaData = dataSemplice.parse(dataString); // assegno alla variabile miaData il valore dell'argomento, dell'istanza dataSemplice, della stringa passato come parametro del metodo
            System.out.println("Analisi effettuata");

            // Data mostrata con la formattazione nativa
            System.out.println("Data nel formato nativo: " + miaData);
            dataFormattata = dataSemplice.format(miaData);
            System.out.println("Data formattata: " + dataFormattata);
        }
        catch(ParseException exc){
            System.out.println(exc);
        }


    }
}
