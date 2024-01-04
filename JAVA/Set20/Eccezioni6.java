package JAVA.Set20;

public class Eccezioni6 {
    public static void main(String[] args) {

        try {
            Rethrow.genException(); // metodo static non devo istanziare la classe
        }
        // quando il main() riprende il controllo del programma, si ritrova un'eccezione da gestire
        catch(ArrayIndexOutOfBoundsException exc){ // eccezione del tipo presente nel catch che l'ha generata (Rethrow.java rigo 18)
            System.out.println("Programma terminato!");
        }
    }
    
}
