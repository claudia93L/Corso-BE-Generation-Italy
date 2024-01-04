package JAVA.Set07;

public class Ascensore {
    
    public boolean portaAperta = false; // porta chiusa per simulare questioni di sicurezza
    public int pianoCorrente = 1; // immaginiamo di partire sempre dal piano iniziale
    public final int PIANO_MAX = 10; // final è una costante - fisso il  limite massimo della corsa dell'ascensore
    public final int PIANO_MIN = 1; // fisso il limite minimo della corsa dell'ascensore

    // elenco di metodi per modificare i vari stati dell'ascensore

    public void apriPorta(){
        System.out.println("Sto aprendo la porta.");
        portaAperta = true;
        System.out.println("La porta e' aperta.");
    }

    public void chiudiPorta(){
        System.out.println("Sto chiudendo la porta.");
        portaAperta = false;
        System.out.println("La porta e' chiusa.");
    }

    public void vaiSu(){
        System.out.println("Sto salendo di un piano.");
        pianoCorrente++;
        System.out.println("Piano: " + pianoCorrente);
    }

    public void vaiGiu(){
        System.out.println("Sto scendendo di un piano.");
        pianoCorrente--;
        System.out.println("Piano: " + pianoCorrente);
    }

}
