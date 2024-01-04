package JAVA.Set16.Esercizio;

// Partendo dalle classi dell’esempio del braccio meccanico che solleva una bottiglia, utilizzare il polimorfismo parametrico per realizzare un modello Java che simuli un braccio meccanico che sollevi due contenitori distinti (parametrizzati) contenenti due bevande distinte (parametrizzate).

// Correzione del professore
// Creare una classe parametrica per i contenitori, una per i contenuti, e quindi le classi semplici dei contenitori specifici come fatto per i contenuti 

public class BraccioMeccanicoMain {

    public static void main(String[] args) {

        Container<Bottiglia> container1 = new Container<Bottiglia>(new Bottiglia());
        Container<Lattina> container2 = new Container<Lattina>(new Lattina());

        Drink<Acqua> drink1 = new Drink<Acqua>(new Acqua());
        Drink<TeFreddo> drink2 = new Drink<TeFreddo>(new TeFreddo()); 

        /* codice vecchio
        Bottiglia<Acqua> bottiglia1 = new Bottiglia<Acqua>(new Acqua()); // creo una bottiglia d'acqua
        Bottiglia<Te> bottiglia2 = new Bottiglia<Te>(new Te()); // creo una bottiglia di te
        Lattina<Te> lattina1 = new Lattina<Te>(new Te()); // creo una lattina di te
        Lattina<Acqua> lattina2 = new Lattina<Acqua>(new Acqua()); // creo una lattina d'acqua */

        BraccioMeccanico braccio = new BraccioMeccanico();
        
        braccio.prendiContainer(container1, drink1);
        braccio.prendiContainer(container1, drink2);
        braccio.prendiContainer(container2, drink1);
        braccio.prendiContainer(container2, drink2);
    }
    
}

class Bottiglia {
    @Override
    public String toString(){
        return "bottiglia";
    }
}

class Lattina {
    @Override
    public String toString(){
        return "lattina";
    }
}

class Acqua {
    @Override
    public String toString(){
        return "acqua";
    }
}

class TeFreddo {
    @Override
    public String toString(){
        return "te' freddo";
    }
}

class Container<Z> {

    private Z container;

    public Container(Z z){
        setContenuto(z);
    }

    public void setContenuto(Z container){
        this.container = container;
    }

    public Z getContenuto(){
        return container;
    }
}

class Drink<T> {

    private T contenuto;

    public Drink(T t){
        setContenuto(t);
    }

    public void setContenuto(T contenuto){
        this.contenuto = contenuto;
    }

    public T getContenuto(){
        return contenuto;
    }
}


/* codice vecchio

class Bottiglia<T> {
    private T drink1;

    public Bottiglia(T t){
        drink1 = t;
    }

    public T getDrink(){
        return drink1;
    }
}

class Lattina<K> {
    private K contenuto;

    public Lattina(K k){
        contenuto = k;
    }

    public K getContenuto(){
        return contenuto;
    }
} */


class BraccioMeccanico{

    public void prendiContainer(Container<?> container, Drink<?> contenuto){

        System.out.println("Prendo la " + container.getContenuto() + " di " + contenuto.getContenuto());

    }
}
