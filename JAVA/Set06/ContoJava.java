package JAVA.Set06;

/*
Scrivere un programma che simuli un conto bancario denominato contoJava, per effettuarvi le seguenti operazioni:
1. Versare1.000€,
2. Prelevarne500€,
3. Prelevarne successivamente 150€, 
4. Visualizzarne il saldo rimanente.

Aprire quindi un secondo conto bancario denominato depositoJava dove siano già presenti 1.000 € e:
1. Effettuare un'aggiunta dell'interesse del 10%,
2. Visualizzare il saldo rimanente.
*/

public class ContoJava {
    
    // Conto principale

    public double saldo = 0;
    private double versamento = 0;
    private double prelievo = 0;
                                        //versamento (json)
    public void versamentoConto(double denaroVersato){
        versamento = denaroVersato;
        saldo = saldo + versamento;
        System.out.println("Totale versato: " + versamento + " euro");
    }
                                    //prelievo(json)
    public void prelievoConto(double denaroPrelevato){
        prelievo = denaroPrelevato;
        saldo = saldo - prelievo;
        System.out.println("Totale prelevato: " + prelievo + " euro");
    }

    public void mostraSaldo(){
        System.out.println("Saldo attuale: " + saldo + " euro");
    }

    // Deposito 
    public double percentualeInteresse = 0;
    public double saldoDeposito = 0;
    public int giorni = 0;
    public double percentualeNumero = 0; 
    public double calcoloInteresse = 0;
                                //(double percentage, double amount, int days)
    public void calcolaInteressi(){
        //percentualeInteresse = percentage;
        //saldoDeposito = amount;
        //giorni = days;
        percentualeNumero = percentualeInteresse / 100;
        calcoloInteresse = ((saldoDeposito * percentualeNumero) * giorni) / 36500;
        saldoDeposito = saldoDeposito + calcoloInteresse;
        System.out.println("Il tasso di interesse è pari al: " + percentualeInteresse + "%");
        System.out.println("I tuo saldo con interessi calcolati è di: " + saldoDeposito + " euro");
    }
}
