package JAVA.Set06;

// classe
public class Televisore {
    // campi
    public int pollici = 0;
    private String emittente = "Nessuna"; // è privato, perchè voglio poter cambiare canale soltanto tramite il metodo scritto in basso
    public int volume = 0; // valori da 0 a 100
    public boolean sky = false; // questa TV accede a SKY o meno
    public boolean acceso = false; 

    // metodo
    // emitScelta proviene dal main() e viene salvata nel campo emittente
    public void cambiaCanale(String emitScelta){ // anzichè assegnare l'emittente dal campo, lo faccio tramite un metodo, passandolo come argomento
        emittente = emitScelta; // qui lo assegno e lo salvo nella variabile
    }

    public void stampaInfo(){
        System.out.println("Dimensione schermp: " + pollici + " pollici");
        System.out.println("Emittente sintonizzata: " + emittente);
        System.out.println("Livello volume: " + volume);
        System.out.println("Collegamento a SKY: " + sky);
        System.out.println("Dispositivo acceso: " + acceso);
    }

}
