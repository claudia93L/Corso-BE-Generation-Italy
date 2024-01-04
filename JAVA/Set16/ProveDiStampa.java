package JAVA.Set16;

public class ProveDiStampa {

    public static void main(String[] args){
        System.out.println(new Object()); // Object è la classe da cui ereditano tutte le altre
        System.out.println(new StringBuilder("Un testo"));
        System.out.println(new Prima()); 
        System.out.println(new Seconda()); // println(), così come print(), cerca sempre un toString(), predefinito da java.lang.String o personalizzato (viene quindi eseguito senza che lo chiamiamo noi)
    }
}

class Prima { }

class Seconda {
    String seconda = "Questa classe fa un override di toString()";

    public String toString() {
        return seconda;
    }

}