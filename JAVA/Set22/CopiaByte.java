package JAVA.Set22;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class CopiaByte {

    // versione compatta per il lancio del programma

    public static void main(String[] args) throws IOException {

        FileInputStream in = new FileInputStream(new File("JAVA/Set22/flussobyte.txt")); // se VSCore ha creato il package
        // FileInputStream in = new FileInputStream(new File("src/JAVA/Set22/flussobyte.txt")); // altra versione per il package, se la cartella src viene automaticamente creata (nascosta dal sistema) a seconda dell'IDE utilizzato
        // FileInputStream in = new FileInputStream(new File("flussobyte.txt")); // senza package
        FileOutputStream out = new FileOutputStream(new File("JAVA/Set22/copiabyte.txt"));

        while(in.available() != 0) { // se ho byte da importare...
            out.write(in.read()); // ... leggo un pacchetto di byte e lo scrivo nel file di output
        }

        System.out.println("File correttamente duplicato");
        in.close();
        out.close();

    }
}