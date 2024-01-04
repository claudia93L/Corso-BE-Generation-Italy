package JAVA.Set16;

// la forza dei generics è che, creando una famiglia di classi contenitore, possiamo incastrarli a nostro piacimento
// la classe può chiamarsi in qualsiasi maniera, anvendo al suo interno un main indipendente

public class Generics {

    public static void main(String[] args) {
        Bottiglia<Acqua> bottiglia1 = new Bottiglia<Acqua>(new Acqua()); // creo una bottiglia d'acqua
        Bottiglia<Succo> bottiglia2 = new Bottiglia<Succo>(new Succo()); // creo una bottiglia di succo

        BraccioMeccanico braccio = new BraccioMeccanico(); 
        braccio.prendiBottiglia(bottiglia1);
        braccio.prendiBottiglia(bottiglia2);
    }
    
}


class Acqua {
    
    // chiamando la classe Acqua, verrà eseguito il seguente codice
    @Override
    public String toString(){
        return "acqua";
    }
}

class Succo {
    @Override
    public String toString(){
        return "succo";
    }
}

class Bottiglia<T> { // T indica parametro di tipo con notazione <carattere> (convenzione - T, E, V, K)
    private T contenuto; // T è un tipo di oggetto generico

    // costruttore
    public Bottiglia(T t){ // la bottiglia non è vuota, ma contiene una bevanda generica da definirsi
        /* contenuto = t; */
        // alternativa con set
        setContenuto(t);
    }

    // incapsulamento (non utilizzando il costruttore)
    public void setContenuto(T contenuto){
        this.contenuto = contenuto;
    }

    public T getContenuto(){
        return contenuto;
    }
}

class BraccioMeccanico{
    public void prendiBottiglia(Bottiglia<?> bottiglia){ // il ? è la T dell'implementazione di Bottiglia, qui dentro si indica così (regola sintattica)
        System.out.println("Ho preso una bottiglia di " + bottiglia.getContenuto());
    }
}
