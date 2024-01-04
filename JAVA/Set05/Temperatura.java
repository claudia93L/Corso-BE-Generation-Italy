package JAVA.Set05;

public class Temperatura {

    public double celsius = 0;

    public void convertiTemperatura(double fahrenheit){
        celsius = (int)(fahrenheit - 32) * 5/9; // eseguo il casting per trasformare in intero il valore
        System.out.println("La temperatura in Fahrenheit e' di " + fahrenheit + "°F, mentre in Celsius è di " + celsius + "°C");
    }   
}
