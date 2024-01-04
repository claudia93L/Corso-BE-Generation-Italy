package JAVA.Set05;

public class ClienteTest {
    public static void main(String[] args) {
        Cliente schedaCliente1 = new Cliente();
        Cliente schedaCliente2 = new Cliente();

        schedaCliente1.clienteID = 76469;
        schedaCliente1.nuovoCliente = true;
        schedaCliente1.acquisto1 = 43.20;

        schedaCliente2.clienteID = 32556;
        schedaCliente2.nuovoCliente = false;
        schedaCliente2.acquisto1 = 67.80;
        schedaCliente2.acquisto2 = 354.90;

        schedaCliente1.mostraScheda();
        schedaCliente2.mostraScheda();

    }
}