package JAVA.Set05;

public class PersonaTest {
    public static void main (String[] args) {

        // passiamo il valore passando il valore input dal file json
        int anni = Integer.parseInt(args[0]);
        Persona miaPersona = new Persona();

        miaPersona.calcolaEta(anni);
    } 

}

