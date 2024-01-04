package JAVA.Set08;

public class ArgsTest {

    public static void main(String[] args) {
        System.out.println("Concatenazione: " + (args[0] + args[1])); // qui ottengo 23
        int arg1 = Integer.parseInt(args[0]); // converto la String di args[0] in int e la salvo
        int arg2 = Integer.parseInt(args[1]); // converto la String di args[1] in int e la salvo
        System.out.println("Totale: " + (arg1 + arg2)); // con parentesi, verranno trattati come int e verrà eseguita la somma - ottengo 5
        System.out.println("Totale(?): " + arg1 + arg2); // senza parentesi, il println tratta ciò che contiene come stringhe e verranno promossi a String e le concatenerà - ottengo 23
        // 1° passaggio - "Totale (?): " + arg1 diventa "Totale (?) + arg1" unica String
        // 2° passaggio - "Totale (?): + arg1" + arg2 diventa "Totale (?) + arg1 + arg2" unica String
    }
}