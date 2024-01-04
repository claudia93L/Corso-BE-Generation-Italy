package JAVA.Set22;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class SommaInteri {

    public static void main(String[] args) throws IOException { // usando IOException si suppone che venga definito almeno un errore da prevedere
        
        InputStreamReader reader = new InputStreamReader(System.in); // input da terminale - Streaming nativo - Dato acquisito come se fosse Scanner. SI TRATTA DI UN LETTORE DI DATI IN INPUT
        BufferedReader myInput = new BufferedReader(reader); // SI TRATTA DI UN MEMORIZZATORE DI DATI IN INPUT

        String str1 = "", str2 = "";
        int num1 = 0, num2 = 0;

        try {

            // versione estesa, si poteva compattare concatenando con la notazione dot
            System.out.print("Inserisci il primo numero: ");
            str1 = myInput.readLine(); // chiedo un numero ma lo salvo in una stringa

            num1 = Integer.parseInt(str1); // converto String in int

            System.out.print("Inserisci il secondo numero: ");
            str2 = myInput.readLine(); // chiedo un altro numero ma lo salvo in una stringa

            num2 = Integer.parseInt(str2); // converto String in int

            // se supero i catch, eseguo la somma
            System.out.println("La somma tra i numeri immessi e': " + (num1 + num2));
        }
        catch(IOException ioe) {
            System.out.println("Problema di streaming.");
        }
        catch(NumberFormatException nfe) {
            System.out.println("Errore di immissione, non e' un numero.");
        }
        finally {
            System.out.println("Programma terminato.");
        }

    }
    
}
