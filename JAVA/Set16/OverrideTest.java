package JAVA.Set16;

// override di istanze

public class OverrideTest {

    public static void main(String[] args) {
        Madre a = new Madre();
        Figlia b = new Figlia();
        Madre c = new Figlia();
        // nell'override decido io quale metodo utilizzare - se la sottoclasse fa un override, vince quello
        
        System.out.println(a.metodo(5, 7)); // viene svolto metodo() di Madre
        System.out.println(b.metodo(5, 7)); // viene svolto metodo() di Figlia
        System.out.println(c.metodo(5, 7)); // viene svolto metodo() di Figlia
        
    }
    
}

class Madre {

    public int metodo(int i, int j){
        return i - j;
    }

}

class Figlia extends Madre {

    // metodo() è in override con l'omonimo della superclasse

    public int metodo(int i, int j){
        return i + j;
    }
}
