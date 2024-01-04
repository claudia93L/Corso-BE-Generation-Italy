package JAVA.Esercizi.Scuola;

public abstract class Persona {

    private String nome = "-inserire nome-";
    private String cognome = "-inserire cognome-";
    protected int annoNascita = 0;

    // costruttore
    public Persona(String nome, String cognome, int annoNascita) {
        setNome(nome);
        setCognome(cognome);
        setAnnoNascita(annoNascita);
    }

    // incapsulamento 
    
    public void setNome(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return nome;
    }

    public void setCognome(String cognome){
        this.cognome = cognome;
    }

    public String getCognome(){
        return cognome;
    }

    // metodi abstract

    public abstract void setAnnoNascita(int annoNascita);

    public abstract int getAnnoNascita();

    public abstract void stampaLista();

    
}