package JAVA.Set09;

public class Capitale {
    
    public static void main(String[] args) {
        
        // programma per calcolare gli anni necessari al raddoppio di un capitale dato un certo tasso di interesse
        // in realtà l'array args continua a contenere stringhe, che posso poi convertire all'occorrenza
        int capitaleIniziale = Integer.parseInt(args[0]); // capitale iniziale
        float tassoInteresse = Float.parseFloat(args[1]); // tasso di interesse
        int anni = 0; // inizializzo il numero di anni
        int capitaleAttuale = capitaleIniziale * 100; // converto il capitale in centesimi, per poi stampare centesimi a due cifre

        // segue ciclo do{} while()
        do {
            capitaleAttuale += capitaleAttuale * tassoInteresse / 100; // aggiugno l'interesse al capitale corrente
            anni ++; // incremento gli anni
            System.out.println("Anno " + anni + ": " + capitaleAttuale/100);
        } while (capitaleAttuale <= 200 * capitaleIniziale);
        
    }
}
