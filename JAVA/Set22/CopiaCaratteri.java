package JAVA.Set22;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class CopiaCaratteri {

    public static void main(String[] args) throws IOException {

        try {
            File inputFile = new File("JAVA/Set22/flussocaratteri.txt");
            File outputFile = new File("JAVA/Set22/copiacaratteri.txt");
            FileReader in = new FileReader(inputFile); // FileReader - flusso di caratteri
            FileWriter out = new FileWriter(outputFile); // FileWriter - flusso di caratteri

            while(in.ready()) { // finché ci sono caratteri a destra della posizione corrente, ready() restituisce un boolean
                out.write(in.read()); // legge un carattere dal file di input e lo copia nel file di output
            }

            in.close();
            out.close();
            System.out.print("Documento duplicato. "); // print che avviene se non sono lanciate Exceptions
        }
        catch(IOException ioe) {
            System.out.print("Problema di streaming. ");
        }
        finally {
            System.out.println("Programma terminato.");
        }
    }
    
}
