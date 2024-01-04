package JAVA.Set12;

public class ClientiTest {
    public static void main(String[] args) {
        String ordinazioneLui = "Margherita";
        String ordinazioneLei = "Diavola";
        String bevanda = "Vino della casa";
        System.out.println("I clienti elencano le ordinazioni al cameriere: " + ordinazioneLui + ", " + ordinazioneLei + ", " + bevanda);
        Cameriere mioCameriere = new Cameriere(); // istanza di Cameriere
        mioCameriere.comanda(ordinazioneLui, ordinazioneLei, bevanda); // il "caller" main() invoca il "worker" comanda() 
        System.out.println("I clienti mangiano le rispettive pizze");
    }

}
