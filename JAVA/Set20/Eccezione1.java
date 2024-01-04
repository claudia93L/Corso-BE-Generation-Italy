package JAVA.Set20;

public class Eccezione1 {

    public static void main(String[] args) {
        
        int nums[] = new int[4];    

        try { 
            System.out.println("Prima che l'eccezione sia generata");
            // Provoco un'eccezione di tipo ArrayIndexOutOfBoundsException
            nums[7] = 10; // la posizione 7 non esiste!
            System.out.println("Questo non verra' stampato");
        } // Il try va accompagnato da almeno un catch
        catch (ArrayIndexOutOfBoundsException exc) { // creo l'istanza dell'eccezione che si e' generata
            // catturo e gestisco l'eccezione
            System.out.println("Indice dell'array fuori dai parametri!");
        }

        System.out.println("Dopo che il blocco try/catch e' stato attraversato");
    
    }

}