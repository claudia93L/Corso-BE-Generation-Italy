package JAVA.Set09;

public class CicloFor2Contatori {

    public static void main(String[] args) {
        
        // i contatori non devono essere per forza int, anzi non devono essere per forza tipi primitivi!
        for(String i = "|", t = "------"; i.length() < 7; i += "|", t = t.substring(1)){
            // il terzo argomento del for aumenta il numero di "|" e decrementa il numero di "-"
            System.out.println(i + t);

        }

    }
    
}
