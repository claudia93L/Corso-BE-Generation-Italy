package JAVA.Set09;

public class RadiceQuadrata {
    
    public static void main(String[] args) {
        
        // numero di cui calcolare la radice quadrata
        float radice = Float.parseFloat(args[0]);
        float radiceQuadrata = radice; // il numero inserito è anche il primo tentativo di trovare la radice

        // verifico l'accuratezza
        // es: se ho 2, 2*2 verifico che sia vicino a radice = 4
        while(radiceQuadrata*radiceQuadrata - radice > 0.001){
            radiceQuadrata = (radiceQuadrata + radice/radiceQuadrata)/2; // relazione di convergenza
            System.out.println("Prossimo tentativo con " + radiceQuadrata); // la condizione del while è ancora vero, cioè non sono abbastanza vicino a radice
        }

        System.out.println("La radice quadrata di " + radice + " e' " + radiceQuadrata);
    }

}
