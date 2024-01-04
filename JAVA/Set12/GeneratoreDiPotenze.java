package JAVA.Set12;

/* 
    Data la classe seguente da non modificare, completare il programma affinché stampi l'elenco di numeri sottostante sfruttando gli elevamenti a potenza già disponibili in Java. 
    Output richiesto 
    1
    10
    100
    1000
    10000
    100000 
    1000000 
    10000000 
    100000000 
    1000000000 
 */

public class GeneratoreDiPotenze {
    
    public int num1;
    public int num2;
    public int risultato;

    public void setBase(int potenza){
        num1 = potenza;
    }

      public int prossimaPotenza(){

        risultato = (int)Math.pow(num1, num2);
        num2++;
        return risultato;
    }  

}
