package JAVA.Set05;

// scrivo tutto sullo stesso file per semplice spiegazione esercizio
public class IncrementoDecremento {
    public static void main(String[] args) { // tutto ciò che è contenuto nell'args è sempre una stringa
        // i è un int, args contiene String, per cui devo convertire l'elemento di input tramite parseInt() della classe wrapper opportuna
        int i = Integer.parseInt(args[5]); // "5" diventa 5, trasformando da stringa ad intero. Definito su .json creato con Run and Debug
        System.out.println("Stampiamo pre e post incremento: " + ++i + " " + i++ + " " + i); // 6 6 7
        System.out.println("Stampiamo pre e post decremento: " + --i + " " + i-- + " " + i); // 6 6 5
    }
}