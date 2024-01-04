package JAVA.Set16;

public class Camicia extends Abbigliamento { 
// una classe che extends un'altra ne eredita campi, metodi e implementazioni da fare

//unico campo aggiunto per caratterizzare questa classe
private char stile = 'U'; // E = elegante, S = sportiva, P = personalizzata

// costruttore
public Camicia(int elementoID, String descrizione, char codiceColore, double prezzo, char stile){
    super(elementoID, descrizione, codiceColore, prezzo); // invio al costruttore della superclasse la gestione dei campi comuni

    setStile(stile);
    setCodiceColore(codiceColore); // codiceColore inviato nel super() è perché lo richiede il costruttore di Abbigliamento
    // setCodiceColore() sono OBBLIGATA a implementarlo in Camicia perché Camicia eredita questo metodo abstract
}

// INIZIO INCAPSULAMENTO
@Override
public void setCodiceColore(char codiceColore){ // sovrascrivo il metodo abstract della superclasse

    switch(codiceColore){
        case 'R': // rosso
        case 'B': // blu
        case 'G': // verde
        case 'W': // bianco
            this.codiceColore = codiceColore;
            break;
        default: 
        System.out.println("Codice colore non valido, programma terminato.");
        System.exit(0);
    }

}

@Override
public char getCodiceColore(){ // sovrascrivo il metodo abstract della superclasse
    return codiceColore;
}

public void setStile(char stile){

    switch(stile){
        case 'E': // elegante
        case 'S': // sportiva
        case 'P': // personalizzata
            this.stile = stile;
            break;
        default:
        System.out.println("Codice di stile non valido, programma terminato.");
        System.exit(0);
    }
}

public char getStile(){
    return stile;
}

// FINE INCAPSULAMENTO

// implemento il metodo astratto dell'interfaccia collegata
public void restituisci(){
    System.out.println("La camicia acquistata puo' essere restituita entro 5 giorni dall'avvenuta consegna a domicilio.");
}

// sovrascrivo display() della superclasse perché lì manca la stampa dello stile
@Override
public void display() {
    System.out.println("ID della camicia: " + getElementoID()); // getElementoID() proviene da Abbigliamento
    System.out.println("Descrizione: " + getDescrizione()); // proviene da Abbigliamento
    System.out.println("Codice colore: " + getCodiceColore()); // getCodiceColore() è di Camicia.java, Abbigliamento l'aveva abstract
    System.out.println("Codice di stile: " + getStile()); // implementato in Camicia.java
    System.out.println("Prezzo: unitario: " + getPrezzo() + " euro"); // proviene da Abbigliamento
}

}
