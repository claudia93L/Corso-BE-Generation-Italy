package JAVA.Set22;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class CopiaByteBis {

    // versione dettagliata per il lancio del programma

    public static void main(String[] args) throws IOException {

        try {
            File inputFile = new File("JAVA/Set22/flussobyte.txt"); // istanza che punta al documento di input (riferimento - non é il documento)
            File outputFile = new File("JAVA/Set22/copyabitebis.txt"); // istanza che punta al documento di output (riferimento)
            FileInputStream in = new FileInputStream(inputFile); // istanza di input collegata al riferimento sul documento esterno
            FileOutputStream out = new FileOutputStream(outputFile); // istanza di output collegata al riferimento sul documento esterno 

            while(in.available() != 0) { // finché ho dei byte da leggere...
                out.write(in.read()); // ne leggo un pacchetto e lo scrivo nel file di output
            }

            System.out.print("File duplicato. "); // testo visualizzato solo se non ho problemi che lanciano eccezioni
            in.close();
            out.close();
        }
        catch(IOException ioe){
            System.out.println("Problema di streaming. ");
        }

        finally { // il finally viene svolto sempre
            System.out.println("Programma terminato"); 
        }
        
    }
    
}
