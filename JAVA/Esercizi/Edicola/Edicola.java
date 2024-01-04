package JAVA.Esercizi.Edicola;

/*
 Realizzare un programma Edicola che, utilizzato dal gestore di una rivendita di riviste e quotidiani, che tenga conto giornalmente, per almeno 5 pubblicazioni:
 delle copie ricevute dal fornitore,
 delle copie vendute ai clienti,
 delle copie rese (ricevute – vendute) da restituire al distributore di zona.
Stabilendo i rispettivi prezzi di copertina delle pubblicazioni, nonché l'aggio per ogni copia venduta (la quota di ricavato che resta all'edicolante), determinare il guadagno giornaliero del negoziante dalla somma dei guadagni dalle vendite delle pubblicazioni precedentemente inserite.
Immettere i dati necessari ricorrendo alla classe Scanner:
 nomi delle pubblicazioni (almeno 5 titoli), a scelta tra quotidiani, riviste, fumetti, ...
 quantità di copie ricevute per ciascuna pubblicazione
 prezzo di copertina di ciascuna pubblicazione
 aggio (percentuale del prezzo di copertina trattenuto dall'edicolante per ogni copia
venduta; es.: su un giornale che costa 1,50€, l'aggio del 10% fa guadagnare
all'edicolante 15 centesimi per ogni copia venduta)
 quantità di copie vendute.
I dati dovranno essere incapsulati al fine di ostacolare l'immissione di prezzi e numeri di copie non corretti, che l'edicolante che usa il programma sarà invitato a inserire nuovamente.
 L'incapsulamento con controllo degli input è condizione necessaria per considerare svolto
 l'esercizio.
 */

public class Edicola {

    private int[] ricevuti = new int[5];
    private String[] quotidiani = new String[5];
    private double[] prezzi = new double[5];
    private int[] venduti = new int[5]; 
    private double[] aggio = new double[5];

    // inizio incapsulamento

    public void setQuotidiani(String quotidiani, int indice){ // passo come parametri quotidiani e indice per l'attribuzione dei valori immessi da input

        this.quotidiani[indice] = quotidiani;
    }

    public String[] getQuotidiani(){
        return quotidiani;
    }

    public void setRicevuti(int ricevuti, int indice){
        
        if(ricevuti < 0){
            System.out.println("Errore! Quantita' di copie ricevute non valida");
        } else {
            this.ricevuti[indice] = ricevuti;
        } 
    }

    public int[] getRicevuti(){
        return ricevuti;
    }

    public void setPrezzi(double prezzi, int indice){

        if(prezzi < 0){
            System.out.println("Errore! Prezzo indicato non valido");
        } else {
            this.prezzi[indice] = prezzi;
        }
    }

    public double[] getPrezzi(){
        return prezzi;
    }

    public void setVenduti(int venduti, int indice){

        if(venduti < 0){
            System.out.println("Errore! Quantita' di copie vendute non valida");
        } else if(venduti > ricevuti[indice]){
            System.out.println("Errore! Quantita' di copie vendute superiore al numero di copie ricevute");
        } else{
            this.venduti[indice] = venduti;
        }
    }

    public int[] getVenduti(){
        return venduti;
    }  

    public void setAggio(double aggio, int indice){

        if(aggio < 0){
            System.out.println("Errore! Percentuale aggio non valida");
        } else if(aggio > 0 && aggio < 25){
            this.aggio[indice] = aggio;
        } else {
            System.out.println("Errore! Percentuale aggio troppo elevata");
        }
    }

    public double[] getAggio(){
        return aggio;
    }


    public void mostraInfo(int i){

        int numeroQuotidianiResi = getRicevuti()[i] - getVenduti()[i]; 
        double totaleVendita = getPrezzi()[i] * getVenduti()[i];
        double aggioPercent = getAggio()[i] / 100;
        double guadagnoEdicolanteSingolo = totaleVendita * aggioPercent;
        double guadagnoNegozianteSingolo = totaleVendita - aggioPercent;


        System.out.println("Hai ricevuto " + getRicevuti()[i] + " copie del quotidiano " + getQuotidiani()[i].toUpperCase() + " al prezzo di " + getPrezzi()[i] + " euro, di cui hai venduto " + getVenduti()[i] + " copie. Hai restituito " + numeroQuotidianiResi + " copie.");

        System.out.println("L'aggio per il quotidiano " + getQuotidiani()[i].toUpperCase() + " e' del " + getAggio()[i] + "%, per un totale di guadagno dell'edicolante per la rivista di " + guadagnoEdicolanteSingolo + " euro. Il guadagno del negoziante e' di " + guadagnoNegozianteSingolo + " euro");

    }

    public void stampaRicevutaNegoziante(){

        /* determinare il guadagno giornaliero del negoziante dalla somma dei guadagni dalle vendite delle pubblicazioni precedentemente inserite. */

        
        
        

    }

}

/*
 in Edicola vanno previsti i controlli affinché i dati immessi siano corretti, per esempio nome > 2 caratteri, prezzo > 0, venduti < ricevuti, richiedendo con un ciclo l'input finché non convalidato.
Inoltre il riepilogo va fatto a fine "giornata" per tutte le pubblicazioni in sequenza, non dopo la gestione di ciascuna (perché le quantità si inseriscono la mattina, la conta delle rese si fa la sera prima di chiudere), con un ciclo opportuno sul contatore i che sarà lo stesso utilizzato in edicola.mostraInfo(i).
 */