package JAVA.Set09;

public class CicliForAnnidati {
    
    public static void main(String[] args) {
        
        // disegno di un rettangolo date le dimensioni
        int altezza = 4, larghezza = 10;

        for(int contaRighe = 0; contaRighe < altezza; contaRighe++){
            for(int contaColonne = 0; contaColonne < larghezza; contaColonne++){ // quando la condizione sarà falsa, verrà terminata la riga
                System.out.print("@"); // ogni "centimetro" di rettangolo è rappresentato da un "@"
            }

            System.out.println(); // riga terminata, vado a capo prima di incrementare contaRighe
        }

    }

}
