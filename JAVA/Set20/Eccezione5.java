package JAVA.Set20;

public class Eccezione5 {

    public static void main(String[] args) {
        
        int numer[] = {4, 8, 16, 32, 64, 128, 256, 512}; // numeratore piú lungo di denominatore
        int denom[] = {2, 0, 4, 4, 0, 8}; // denominatore

        for(int i = 0; i < numer.length; i++){

            try {

                System.out.println(numer[i] + "/" + denom[i] + " = " + (numer[i]/denom[i]));

                }

                catch(ArrayIndexOutOfBoundsException exc){
                    System.out.println("Denominatore non presente");
                }
                catch(Exception exc) { // eccezione generica il messaggio non potrá essere dettagliato (da aggiungere sempre per ultima)
                    System.out.println("Attenzione! Qualcosa non ha funzionato e non posso stabilire cosa!");

                }
            }
        }
    
}
