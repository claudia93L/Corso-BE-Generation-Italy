package JAVA.Set13;

/*
 Realizzare un programma che gestisca due rettangoli, nel primo caso acquisendone le dimensioni attraverso un metodo, nel secondo caso passando le dimensioni dal main() attraverso un costruttore.
Di ciascun rettangolo quindi:
• Visualizzare un messaggio che ne mostri le
dimensioni;
• Calcolarne l'area e mostrarne il valore;
• Disegnarne, ricorrendo al simbolo @ e al costrutto
più opportuno, la forma che ne rispetti le proporzioni.
*/


public class RettangoloCostruttore {

    private int base;
    private int altezza;

    // costruttore
    public RettangoloCostruttore(int base, int altezza){
        setBase(base);
        setAltezza(altezza);
    }

    // costruttore predefinito
    public RettangoloCostruttore(){}

    public void setBase(int base){
        this.base = base;
    }

    public int getBase(){
        return base;
    }

    public void setAltezza(int altezza){
        this.altezza = altezza;
    }

    public int getAltezza(){
        return altezza;
    }

    public void disegnaRettangolo(int base, int altezza){

        int area = base * altezza;

        if(base == altezza){
            System.out.println("Errore! Le dimensioni immesse corrispondono ad un quadrato.");
        } else if(base <= 0 || altezza <=0){
            System.out.println("Errore! Le dimensioni immesse non sono valide");
        } else {
            System.out.println("La base e' di " + base + " e l'altezza e' di " + altezza);
            System.out.println("Il rettangolo ha un'area di " + area);
        }

        for(int i = 1; i <= altezza; i++){
            for(int j = 1; j <= base; j++){
                System.out.print("@");
            }

        System.out.println();

        }
    }
}