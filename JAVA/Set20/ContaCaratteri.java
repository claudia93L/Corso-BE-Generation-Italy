package JAVA.Set20;

import java.util.Scanner;

public class ContaCaratteri {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Inserisci una parola: ");
        String s = input.nextLine();
        System.out.print("Inserisci la lettera da cercare: ");
        String c = input.nextLine(); // c é una variabile locale, non prende il valore di default come le variabili d'istanza (campi)
        int conta = 0;
        int lunghezzaParola;
        input.close();

        char lettera; // lo dichiaro fuori dal try, perché all'interno non é ammesso

        try {
            lettera = c.charAt(0); // cerco nella Stringa c in index 0 - qui si scatena l'eccezione se il carattere non é presente 
            lunghezzaParola = s.length();

            for(int i = 0; i < lunghezzaParola; i++){ 
                // verifico se lettera é dentro la String s
                if(s.charAt(i) == lettera){
                    conta++; // incremento il numero del contatore
                }
            }

            System.out.println("Nella stringa " + s + " ci sono " + conta + " caratteri " + lettera);
        }
        catch(StringIndexOutOfBoundsException exc){ // catturiamo l'eccezione
            System.out.println("Occorre inserire una parola e un carattere da cercare!");
        }
    }
    
}
