package JAVA.Set02;

public class Quotation {

    public String citazione = "Sono una brava programmatrice!"; 
    public String firma = "Claudia";

    public void mostraCitazione(){
        System.out.println(citazione + " Firmato: " + firma);
    }

}



    /* Questa classe la creo per avere un testo utilizzabile in maniera "public" cioè altre classi potranno accedere alla variabile quote. Se avessi messo tutto dentro un'unica classe, volendo utilizzare lo stesso quote in n nuove classi o cambiarlo, avrei dovuto modificare tutte le n classi, invece così soltanto questa classe! */
// public String quote = "Sono arrivato!"; // quote è la variabile public void display() { // display è il metodo
//} }
// display the member variable here System.out.println(quote);

/* Fare in modo che lanciando java QuotationTest, si stampi “Sono un bravo programmatore!”.
    
} */
