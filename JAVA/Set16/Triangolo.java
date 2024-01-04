package JAVA.Set16;

import java.util.Scanner;

// OVERLOADING DI METODI

// determiniamo l'area di un triangolo

public class Triangolo {

public static void main(String[] args) {
    
    Scanner input = new Scanner(System.in);
    System.out.println("*** Benvenuti al calcolatore di aree di triangoli! ***");
    System.out.println("Di quali dati disponi?");
    System.out.println("1. Base e altezza");
    System.out.println("2. Due lati e l'angolo compreso");
    int risposta = input.nextInt();
    double dato1, dato2, dato3;

        if(risposta == 1){ // entro qui se conosco base e altezza
            System.out.println("Inserisci la base: ");
            dato1 = input.nextDouble();
            System.out.println("Inserisci l'altezza: ");
            dato2 = input.nextDouble();
            area(dato1, dato2);
        } else if(risposta == 2){ // entro qui se conosco due lati e l'angolo compreso
            System.out.println("Inserisci il primo lato: ");
            dato1 = input.nextDouble();
            System.out.println("Inserisci il secondo lato: ");
            dato2 = input.nextDouble();
            System.out.println("Inserisci l'angolo compreso: ");
            dato3 = input.nextDouble();
            area(dato1, dato2, dato3); // primo overloading del metodo
        } else {
            System.out.println("Errore di immissione, programma terminato.");
            System.exit(0); // ci permette di terminare il programma forzatamente
        }

        input.close();

    }

    // inizio metodi in overloading
    public static void area(double base, double altezza){
        System.out.println("L'area del triangolo e': " + (base * altezza / 2));
    }

    public static void area(double latoA, double latoB, double angoloGamma){
        System.out.println("L'area del triangolo e': " + (latoA * latoB * Math.sin(angoloGamma) / 2));
    }

    // fine metodi in overloading
    
}
