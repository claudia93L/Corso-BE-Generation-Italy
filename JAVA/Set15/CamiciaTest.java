package JAVA.Set15;

import java.util.Scanner;

public class CamiciaTest {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digita l'ID della camicia: ");
        int id = input.nextInt();
        System.out.print("Descrivi la camicia: ");
        input.nextLine(); // necessario per processare l'invio del nextInt() precedente
        String de = input.nextLine();
        System.out.print("Digita il codice colore (R = rosso, B = blu, G = verde, W = bianco): ");
        char cc = input.nextLine().charAt(0); // non esiste nextChar()
        System.out.print("Digitare il prezzo (virgola per i decimali): ");
        double pr = input.nextDouble();
        System.out.print("Digita il codice dello stile (E = elegante, S = sportiva, P = personalizzata): ");
        input.nextLine(); // necessario per processare l'invio del nextInt() precedente
        char st = input.nextLine().charAt(0);
        Camicia laCamicia = new Camicia(id, de, cc, pr, st);
        laCamicia.display();
        input.close();
    }
    
}
