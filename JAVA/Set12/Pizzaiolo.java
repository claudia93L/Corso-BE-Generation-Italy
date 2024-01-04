package JAVA.Set12;

public class Pizzaiolo {
    
    public void cucina(String pizza1, String pizza2){ // posso cambiare i nomi degli argomenti che ricevo (da Cameriere)
        System.out.println("Il pizzaiolo prepara e inforna le pizze " + pizza1 + ", " + pizza2);
        System.out.println("Il pizzaiolo preleva le pizze e chiama il cameriere");
    }
    // il "worker" cucina() ha esaurito i propri compiti e restituisce il controllo del programma al "caller" comanda()
}
