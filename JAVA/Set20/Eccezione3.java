package JAVA.Set20;

public class Eccezione3 {

    public static void main(String[] args) {

        int numer[] = {4, 8, 16, 32, 64, 128, 256, 512}; // numeratore piú lungo di denominatore
        int denom[] = {2, 0, 4, 4, 0, 8}; // denominatore

        try { // try esterno, qui si scatena l'ArithmeticException (try ne crea un'istanza), vedi Eccezione2.java

            for(int i = 0; i < numer.length; i++){

                try { // try interno

                    System.out.println(numer[i] + "/" + denom[i] + " = " + (numer[i]/denom[i]));

                }
                catch(ArithmeticException exc){ // catch cattura l'istanza dal try come il passaggio parametri caller/worker
                    System.out.println("Non puoi dividere " + numer[i] + " per zero!");
                }
            }

        } // i = 6 mi fa arrivare qui, perché ho un'eccezione non gestita dentro il for, come se avessi un break
        // come non esiste il denominatore per numer[6], naturalmente non esistono tutti i denominatori per i numeratori successivi

        catch(ArrayIndexOutOfBoundsException exc){
            System.out.println("Denominatore non presente -- Programma terminato!");
        }
        
    }
    
}
