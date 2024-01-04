package JAVA.Set12;

public class OrdineTest {
    
    public static void main(String[] args) {
        Ordine mioOrdine = new Ordine(); // dichiaro e creo un'istanza di Ordine
        Camicia camicia1 = new Camicia(), camicia2 = new Camicia(), camicia3 = new Camicia(); // dichiaro e creo 3 istanze di Camicia (devono essere separate da virgola ed essere dello stesso tipo)
        double totale; // dichiaro la variabile in cui salverò i totali parziali
        camicia1.prezzo = 14.99; // assegno il prezzo a camicia1
        camicia2.prezzo = 23.55;
        camicia3.prezzo = 19.99;
        camicia1.quantita = 2; // assegno la quantità di camicia1
        camicia2.quantita = 1;
        camicia3.quantita = 3; 
        // analogamente, posso assegnare valori ai campi restanti di Camicia
        int camicieTotali = camicia1.quantita + camicia2.quantita + camicia3.quantita; // sommo le camicie
        totale = mioOrdine.aggiungiCamicia(camicia1) + mioOrdine.aggiungiCamicia(camicia2) + mioOrdine.aggiungiCamicia(camicia3); // i return di aggiungiCamicia() sono salvati nella variabile totale del caller
        System.out.println("Il costo totale della merce e' " + totale + " euro per " + camicieTotali + " articoli.");
    }
}
