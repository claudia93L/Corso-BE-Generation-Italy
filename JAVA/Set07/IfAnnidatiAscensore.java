package JAVA.Set07;

// creazione classe
public class IfAnnidatiAscensore {

    // attributi della classe
    public boolean portaAperta = false; // porta chiusa per simulare questioni di sicurezza
    public int pianoCorrente = 1; // immaginiamo di partire sempre dal piano iniziale
    public final int PIANO_MAX = 10; // final è una costante - fisso il  limite massimo della corsa dell'ascensore
    public final int PIANO_MIN = 1; // fisso il limite minimo della corsa dell'ascensore

    // elenco di metodi per modificare i vari stati dell'ascensore

    // metodo apertura porta
    public void apriPorta(){
        System.out.println("Sto aprendo la porta.");
        portaAperta = true;
        System.out.println("La porta e' aperta.");
    }

    // metodo chiusura porta
    public void chiudiPorta(){
        System.out.println("Sto chiudendo la porta.");
        portaAperta = false;
        System.out.println("La porta e' chiusa.");
    }

    // metodo per salire
    public void vaiSu(){
        // controllo del piano
        if(pianoCorrente == PIANO_MAX){ // verifico se posso salire
            System.out.println("Non posso salire!");
        } else {
            // controllo della porta
            if(!portaAperta){ // if annidato, avvia la seconda verifica - se la porta è chiusa (!portaAperta equivale a portaAperta == false)
                System.out.println("Sto salendo di un piano.");
                pianoCorrente++;
                System.out.println("Piano: " + pianoCorrente);
            } else {
                System.out.println("Porta aperta, pericolo! Non posso salire.");
            }
        }
    }

    // metodo per scendere
    public void vaiGiu(){
        // controllo del piano
        if(pianoCorrente == PIANO_MIN){ // verifico se posso scendere
            System.out.println("Non posso scendere!");
        } else {
            // controllo della porta
            if(!portaAperta){ // seconda verifica
                System.out.println("Sto scendendo di un piano.");
                pianoCorrente--;
                System.out.println("Piano: " + pianoCorrente);
            } else {
                System.out.println("Porta aperta, pericolo! Non posso scendere.");
            }
        } 
    }
}
