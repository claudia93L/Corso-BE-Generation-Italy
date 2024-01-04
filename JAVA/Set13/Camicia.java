package JAVA.Set13;

public class Camicia{

    private int camiciaID = 0; // private: non accessibile dall'esterno della classe - fa parte dell'incapsulamento
    private String descrizione = "-descrizione richiesta-";
    private char codiceColore = 'U';
    private double prezzo = 0.0;
    private int disponibili = 0; // camicie disponibili 
    private int acquistate = 0; // camicie acquistate

    // inizio incapsulamento
    public void setCamiciaID(int camiciaID){ // con set assegno il valore della variabile, dicendogli che ci si deve aspettare un valore

        if(camiciaID > 0){
            this.camiciaID = camiciaID; // assegno l'argomento del metodo al campo di rigo 5
        } else {
            System.out.println("Non sono ammessi ID negativi, verra' assegnato l'ID 1000");
            this.camiciaID = 1000;
        }
    }

    public int getCamiciaID(){ // con get preleviamo e recuperiamo il valore - int perchè camiciaID è un int
        return camiciaID; // restituiamo il valore di camiciaID
    }

    public void setDescrizione(String descrizione){

        if(descrizione.length() > 10){ // evito descrizioni troppo brevi
            this.descrizione = descrizione; // assegno l'argomento del metodo al campo di rigo 6
        } else {
            System.out.println("Descrizione troppo breve, verra' assegnata '-DESCRIZIONE MANCANTE-'");
            this.descrizione = "-DESCRIZIONE MANCANTE-";
        }
    }

    public String getDescrizione(){ // String perchè descrizione è una stringa
        return descrizione;
    }

    public void setCodiceColore(char codiceColore){

        switch(codiceColore){ // controllo i colori possibili
            case 'R': // rosso
            case 'B': // blue
            case 'G': // verde
            case 'W': // bianco
                this.codiceColore = codiceColore; // assegno l'argomento del metodo di rigo 9
                break;
            default: // tutti gli altri colori, ovvero i char non ammessi
                System.out.println("Codice colore non valido, verra' assegnato 'X'");
                this.codiceColore = 'X';
        }
    }

    public char getCodiceColore(){ // char perchè codiceColore è un char
        return codiceColore;
    }

    public void setPrezzo(double prezzo){

        if(prezzo > 0.0){
            this.prezzo = prezzo; // assegno l'argomento del metodo al campo di rigo 10
        } else {
            System.out.println("Un prezzo non puo' essere negativo, verra' assegnato 10.00");
            this.prezzo = 10.00;
        }
    }

    public double getPrezzo(){ // double perchè prezzo è un double
        return prezzo;
    }

    public void setDisponibili(int disponibili){

        if(disponibili <= 0){
            System.out.println("Valore non possibile, verra' assegnato 0"); // si tratta di quantità, metto un valore di sicurezza
            this.disponibili = 0;
        } else if (disponibili < 5){
            System.out.println("Valore accettato, ma le scorte sono in esaurimento");
            this.disponibili = disponibili; // assegno l'argomento del metodo al campo di rigo 11
        } else {
            this.disponibili = disponibili; // assegno l'argomento del metodo al campo di rigo 11
        }
    }

    public int getDisponibili(){ // int nperchè disponibili è un int
        return disponibili;
    }

    public void setAcquistate(int acquistate){

        if(acquistate <= 0){
            System.out.println("Valore non consentito, ordine annullato, verra' assegnato 0");
            this.acquistate = 0;
        } else if(acquistate > disponibili){
            System.out.println("Valore superiore alla disponibilita', vendo tutte le camicie disponibili");
            this.acquistate = disponibili;
        } else {
            this.acquistate = acquistate; // assegno l'argomento del metodo al campo di rigo 12
        }
    }

    public int getAcquistate(){ // int perchè acquistate è un int
        return acquistate;
    }
    // fine incapsulamento

    // quando un metodo è public, si devono richiamare i valori con l'incapsulamento per questioni di sicurezza
    public void display(){ // uso get per prelevare il valore, perchè display() è public e richiamabile dall'esterno - l'accesso ai private deve avvenire attraverso percorsi obbligati (metodi set e get)
        System.out.println("ID della camicia: " + getCamiciaID()); 
        System.out.println("Descrizione: " + getDescrizione());
        System.out.println("Codice colore: " + getCodiceColore());
        System.out.println("Prezzo unitario: " + getPrezzo());
        System.out.println("Disponibiita' in magazzino: " + getDisponibili());
        System.out.println("Quantita' acquistata: " + getAcquistate());
        System.out.println("Prezzo totale: " + getAcquistate() * getPrezzo()); // i metodi get, avendo un return, sostituiscono le variabili e permettono di svolgere operazioni aritmetiche - moltiplicazione tra metodi che hanno un tipo di ritorno
    }

}