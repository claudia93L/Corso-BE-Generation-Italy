package JAVA.Set12;

// classe intermedia tra classe Camicia e classe Test, dove costruiamo la struttura

public class Ordine {

    public double prezzoTotale = 0.0; // prezzo di default per carrello vuoto

    public double aggiungiCamicia(Camicia camicia){ // camicia "locale" del metodo, dove passiamo l'oggetto camicia come argomento. Riceverà svariate istanze di camicia e le chiamerà tutte allo stesso modo
        prezzoTotale = camicia.prezzo * camicia.quantita; // prelevo il prezzo unitario e la quantità di camicie
        return prezzoTotale; // il return type è il double di rigo 10

    }
    
}
