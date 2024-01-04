package JAVA.Set06;

public class MetodiStringhe {

    public static void main(String[] args) {
        String greet = " HOW ".trim(); // trim() rimuove gli eventuali spazi a inizio e fine stringa
        System.out.println(greet);

        String lc = greet + "DY".toLowerCase(); // toLowerCase() rente tutta la stringa in minuscolo
        System.out.println(lc);

        String laStringa = "Hello World";
        String laStringaParziale = laStringa.substring(6); // substring(6) estrae dal sesto carattere, la sottostringa va salvata
        System.out.println(laStringaParziale);

        boolean finisceCon = laStringa.endsWith("World"); // verifico se una stringa finisce con una certa stringa - endsWith() ha tipo di ritorno boolean, pertanto finisceCon è boolean
        System.out.println(finisceCon);

        System.out.println(laStringa.charAt(1)); // charAt(1) preleva il carattere in posizione 1 da laStringa
        boolean contiene = laStringa.contains("llo"); // verifica se laStringa contiene la sequenza "llo"
        System.out.println(contiene);

    }
    
}
