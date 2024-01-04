package JAVA.Set13;

/* Con incapsulamento.
1. Creare la classe DateTwo, del tutto analoga a
DateOne ma con tutti i campi private.
2. Realizzare l’incapsulamento implementando gli opportuni metodi di tipo get e set affinché i campi private siano accessibili dall'esterno della classe, controllando la regolarità dei valori di giorno e mese, predisponendo in tal caso un return adeguato che gestisca il metodo main()
(metodo "caller" di ciascun metodo set). */

public class DateTwo {

    private int giorno;
    private String mese;
    private int anno;

    public void setGiorno(int giorno){
        
        if(giorno > 0 && giorno <= 31){
            this.giorno = giorno;
        } else {
            System.out.println("Giorno inserito non valido. Verra' assegnato il giorno 1");
            this.giorno = 1;
        }
    }

    public int getGiorno(){
        return giorno;
    }

    public void setMese(String mese){
        String giornoNonValido = "Errore! Il numero di giorni supera il numero complessivo di giorni del mese. Verra' assegnato il valore 'Giorno scelto inesistente nel mese selezionato'";
        
        switch(mese){
            case "febbraio":
                if(giorno > 29 && giorno <= 31){
                    System.out.println(giornoNonValido);
                    this.mese = "Giorno scelto inesistente nel mese selezionato";
                } else {
                    this.mese = mese;
                }
                break;
            case "aprile":
            case "giugno":
            case "settembre":
            case "novembre":
                if(giorno > 30 && giorno <= 31){
                    System.out.println(giornoNonValido);
                    this.mese = "Giorno scelto inesistente nel mese selezionato";
                } else {
                    this.mese = mese;
                }
                break;
            case "gennaio":
            case "marzo":
            case "maggio":
            case "luglio": 
            case "agosto":
            case "ottobre":
            case "dicembre":
                this.mese = mese;
                break;
            default: 
                System.out.println("Il mese inserito non e' valido. Verra' assegnato il valore 'Mese non valido'");
                this.mese = "Mese non valido";
        }

    }

    public String getMese(){
        return mese;
    }

    public void setAnno(int anno){
        
        if(anno >= 1900 && anno <= 2022){
            this.anno = anno;
        } else {
            System.out.println("Anno inserito non valido. Verra' assegnato l'anno 2000");
            this.anno = 2000;
        }
    }

    public int getAnno(){
        return anno;
    }

    public void mostraData(){
        System.out.println("La data inserita e': " + getGiorno() + "/" + getMese() + "/" + getAnno());
    }

}
