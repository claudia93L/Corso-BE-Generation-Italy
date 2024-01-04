package JAVA.Set16;

public abstract class Abbigliamento { // abstract perchè c'è almeno un metodo abstract

// campi

private int ElementoID = 0; // ID di default del generico capo di abbigliamento
private String descrizione = "-descrizione richiesta-";
protected char codiceColore = 'U'; // più restrittivo di public ma meno di private, da usare perchè i metodi di sua gestione sono abstract
private double prezzo = 0.0;

// costruttore
public Abbigliamento(int elementoID, String descrizione, char codiceColore, double prezzo) {
    setElementoID(elementoID);
    setDescrizione(descrizione);
    setCodiceColore(codiceColore);
    setPrezzo(prezzo);
}

// metodo incapsulato perchè display() è invocabile dall'esterno della classe
public void display(){
    System.out.println("ID dell'elemento: " + getElementoID());
    System.out.println("Descrizione: " + getDescrizione());
    System.out.println("Codice colore: " + getCodiceColore());
    System.out.println("Prezzo unitario: " + getPrezzo() + " euro");
}

// INIZIO INCAPSULAMENTO
public void setElementoID(int elementoID){
    this.ElementoID = elementoID;
}

public int getElementoID(){
    return ElementoID;
}

public void setDescrizione(String descrizione){ 
    this.descrizione = descrizione; 
}

public String getDescrizione(){ 
    return descrizione; 
}

// non posso implementare questo metodo poichè i codici colore cambiano a seconda del tipo di capo di abbigliamento
// il metodo + quindi abstract e questo rende abstract l'intera classe

public abstract void setCodiceColore(char codiceColore);

// naturalmente anche il metodo get corrispondente sarà abstract
public abstract char getCodiceColore();

public void setPrezzo(double prezzo){

    if(prezzo > 0.0){
        this.prezzo = prezzo;
    } else {
        System.out.println("Prezzo non consentito, programma terminato.");
        System.exit(0); // chiusura voluta del programma da codice
    }
}

public double getPrezzo(){
    return prezzo;
}
// FINE INCAPSULAMENTO
    
}
