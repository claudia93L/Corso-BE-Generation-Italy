package JAVA.Esercizi.Cinema;

import java.util.Scanner;

public class SalaCinemaTest {
    
    public static void main(String[] args) {
        
       Scanner input = new Scanner(System.in);
       SalaCinema miaSalaCinema = new SalaCinema();

       System.out.print("Quanti biglietti desideri acquistare? ");
       
       miaSalaCinema.acquistaBiglietti(input.nextInt());

       miaSalaCinema.assegnaPosto();

       input.close();
       
    }


}
