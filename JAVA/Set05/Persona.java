package JAVA.Set05;

/*
 Data la classe PersonaTest.java
public class PersonaTest {
public static void main (String args[]) {
} }
Persona miaPersona = new Persona();
miaPersona.calcolaEta();

creare una classe che calcoli la propria età in giorni e secondi partendo dagli anni, e stampi un messaggio che indichi l’età originale nonché i corrispondenti valori in giorni e secondi. Si ipotizzi per semplicità il calcolo effettuato nel giorno del proprio compleanno, e si modifichi secondo necessità il file PersonaTest.java.
Sapendo poi che la temperatura in gradi Celsius è pari a 5/9 della temperatura in gradi Fahrenheit meno 32, scrivere un programma che converta 80.5°F in °C.
 
 */

public class Persona {
    public int giorni = 365;
    public int secondi = (24 * 3600) * 365;

    public void calcolaEta(int anni){
        giorni = (anni * giorni);
        secondi = (anni * secondi);
        System.out.println("Hai " + anni + " anni, per cui hai vissuto " + giorni + " giorni e " + secondi + " secondi!");
    }

}
