package JAVA.Set12;

public class Cameriere {
    
    // "worker" invocato dal main()
    public void comanda(String ord1, String ord2, String bev){ // posso cambiare i nomi degli argomenti che ricevo (inviati dal main ClientiTest)
        System.out.println("Il cameriere porta " + bev + " al tavolo");
        System.out.println("Il cameriere chiede al pizzaiolo le pizze " + ord1 + ", " + ord2);
        Pizzaiolo mioPizzaiolo = new Pizzaiolo();
        mioPizzaiolo.cucina(ord1, ord2); // il "caller" comanda() invoca il "worker" cucina()
        System.out.println("Il cameriere consegna le pizze " + ord1 + ", " + ord2 + " al tavolo");
    }
    // il "worker" comanda() ha esaurito i propri compiti e restituisce il controllo del programma al "caller" main()
}
