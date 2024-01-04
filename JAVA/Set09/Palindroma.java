package JAVA.Set09;

import java.util.Scanner;

public class Palindroma {
    
    public static void main(String[] args) {
        
        Scanner chiediParola = new Scanner(System.in);
        System.out.print("Scrivi la parola per verificare se e' palindroma: ");
        String parola = chiediParola.next(); // next() perchè non devo convertire la String
        chiediParola.close(); // chiudo l'istanza di input (lo chiede VS Code)
        String alorap = ""; // variabile nominata come "parola" al contrario

        for(int lettera = parola.length() - 1; lettera >= 0; lettera--){ // decremento perhè vado al contrario sulla stringa
            alorap += parola.charAt(lettera); // costruisco la parola al contrario, partendo dalla fine di lettera, e concatenando le varie lettere
        }

        if(alorap.equals(parola)){
            System.out.println("La parola immessa e' palindroma.");
        } else{
            System.out.println("La parola immessa non e' palindroma.");
        }

    }

}
