package JAVA.Set08;

public class Array2D {
    
    public static void main(String[] args) {
        int anni = 5, trimestri = 4;
        int[][] venditeAnnuali; // dichiarazione di array bidimensionale
        venditeAnnuali = new int[anni][trimestri]; // creazione di array bidimensionale

        // inizializzazione dell'array...
        venditeAnnuali[0][0] = 1000; // al 1° trimestre del 1° anno ho vendite per 1000€
        venditeAnnuali[0][1] = 1500; // al 2° trimestre del 1° anno ho vendite per 1500€
        venditeAnnuali[0][2] = 1800; // al 3° trimestre del 1° anno ho vendite per 1800€
        venditeAnnuali[1][0] = 1000; // al 1° trimestre del 2° anno ho vendite per 1000€
        venditeAnnuali[2][1] = 1100; // al 2° trimestre del 3° anno ho vendite per 1100€
        venditeAnnuali[2][3] = 1900; // al 4° trimestre del 3° anno ho vendite per 1900€
        venditeAnnuali[3][3] = 2000; // al 4° trimestre del 4° anno ho vendite per 2000€

        // la stampa di un array bidimensionale è quasi sempre effettuata tramite cicli for annidati, per gli anni e per i trimestri
        for(int i = 0; i < anni; i++){
            System.out.println("Vendite anno " + (i + 2017) + ": "); // il mio anno 0 è il 2017
            // all'avvio del ciclo principale (i), il ciclo annidato (j) verrà eseguito fino all'esaurimento dei dati da ciclare, per poi passare all'avvio del secondo avvio del ciclo (i)
            for(int j = 0; j < trimestri; j++){
                System.out.println("Trimestre " + (j + 1) + "° : " + venditeAnnuali[i][j]); // il mio trimestre 0 è il 1°
            }

            System.out.println(); // creo uno spazio vuoto per separare gli anni ciclati, una questione puramente grafica
        }

    }
}
