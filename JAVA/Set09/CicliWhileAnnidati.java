package JAVA.Set09;

public class CicliWhileAnnidati {
    
    public static void main(String[] args) {
        
        String nome = "Lenny"; // oltre le 5 lettere va molto più lento
        String indovina = "";
        int tentativi = 0;

        // il while è una sfida a Java per indovinare il valore di nome

        while(!indovina.equals(nome.toLowerCase())){ // fintanto che il nome non è indovinato, resta nel while esterno

            indovina = ""; // inizio di un nuovo tentativo, resetto indovina al valore iniziale

            //ciclo while interno
            while(indovina.length() < nome.length()){ // fintanto che indovina è più corta di nome, resta nel while interno 
                char carattereAscii = (char)(Math.random()* 26 + 97); // sorteggio una lettera tramite codice ASCII e converto il codice in char per salvarlo - il char effettuando il casting impedisce gli eventuali valori decimali - 97 è il codice carattere della A, andremo quindi dalla A alla Z, pensato per nomi singoli (non include lo spazio)
                indovina = indovina + carattereAscii; // il char viene convertito automaticamente in String dal +, compongo un nome a caso, lettera per lettera
            }

            // usciti dal while interno, indovina e nome hanno per forza la stessa lunghezza
            tentativi++;
        }

        // se arrivo qui, la condizione del while esterno è falsa, cioè nome è stato indovinato
        System.out.println(indovina);
        System.out.println(nome + " trovato dopo " + tentativi + " tentativi!");
    }

}
