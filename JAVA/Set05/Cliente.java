package JAVA.Set05;

/* 
 Data la classe ClienteTest.java
public class ClienteTest {
public static void main (String args[]) {
} }
Cliente mioCliente = new Cliente();
mioCliente.displayInfoCliente();
creare una classe che stampi la scheda di un cliente di Vestinjava che riporti: il suo ID numerico, un indicatore se è un cliente nuovo o preesistente, l’importo totale degli acquisti effettuati (in € e centesimi), intervenendo come necessario sul file ClienteTest.java.
 */

public class Cliente {
    public int clienteID = 0;
    public boolean nuovoCliente = true;
    public double acquisto1 = 0.00;
    public double acquisto2 = 0.00;
    public double totaleAcquisti = 0.00;

    public void mostraScheda(){
        totaleAcquisti = acquisto1 + acquisto2;
        System.out.println("ID Cliente: " + clienteID);
        System.out.println("Nuovo cliente: " + nuovoCliente);
        System.out.println("Totale d'acquisto: " + totaleAcquisti + " euro");

    }

}