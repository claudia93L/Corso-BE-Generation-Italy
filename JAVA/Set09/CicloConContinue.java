package JAVA.Set09;

public class CicloConContinue {

    public static void main(String[] args) {
        
        int punteggioMin = 15;
        int superamentiRichiesti = 3;
        int[] punteggi = {4, 6, 2, 8, 12, 34, 9};

        // usiamo il for avanzato
        for(int punteggioSingolo : punteggi){

            if(punteggioSingolo < punteggioMin){
                continue; // se il punteggio non va bene, evito di svolgere il resto del for e passo al controllo successivo, torna sopra
            }

            superamentiRichiesti--; // valore superato quindi riduco i superamenti restanti
        }

        System.out.println("Superamenti mancanti: " + Math.max(0, superamentiRichiesti)); // max() mi assicura di non stampare numeri negativi

    }
    
}
