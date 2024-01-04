package JAVA.Set06;

public class ContoJavaTest {
    public static void main(String[] args) {
        // Conto principale

        ContoJava contoPrincipale = new ContoJava();
        contoPrincipale.versamentoConto(1000);
        contoPrincipale.prelievoConto(500);
        contoPrincipale.prelievoConto(150);
    
        contoPrincipale.mostraSaldo();

        // Deposito

        ContoJava depositoJava = new ContoJava();
        //depositoJava.calcolaInteressi(10, 1000, 478);
        depositoJava.saldoDeposito = 1000;
        depositoJava.percentualeInteresse = 10;
        depositoJava.giorni = 478;
        depositoJava.calcolaInteressi();
    }
}
