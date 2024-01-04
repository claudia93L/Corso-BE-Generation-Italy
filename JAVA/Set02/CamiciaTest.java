package JAVA.Set02;

public class CamiciaTest { 

    /* public: è il metodo di avvio del programma, dev'essere accessibile dall'esterno
    static: fa sì che il metodo sia avviato senza istanziare la classe che lo contiene
    void: il metodo main() non restituisce nulla
    String[] args: array degli input "rudimentali"
    */
    
    public static void main(String[] args){
        Camicia miaCamicia; // dichiaro un'istanza della classe Camicia
        miaCamicia = new Camicia(); // creo l'istanza di Camicia
        miaCamicia.mostraInfo(); // avendo l'istanza, posso richiamare tutti i campi e i metodi public di Camicia
    }


}
