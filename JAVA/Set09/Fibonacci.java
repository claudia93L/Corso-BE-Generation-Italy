package JAVA.Set09;

/*
 creare la classe Fibonacci che visualizza la tipica sequenza che inizia con i numeri 0 e 1, e prosegue con la somma dei due numeri precedenti, fino al valore 100.
Risultato atteso: 0 1 1 2 3 5 8 13 21 34 55 89.
 */

public class Fibonacci {

    public int numero1 = 0;
    public int numero2 = 1;
    public int somma; 
    

    public void mostraSequenza(){

        System.out.print(numero1);

        for(int somma = 1; somma <= 100; somma++){

            somma = numero1 + numero2;
            
            numero1 = numero2;
            numero2 = somma;

            System.out.print(" " + numero1);
        }            
    }
}
