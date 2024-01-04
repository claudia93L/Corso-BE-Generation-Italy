package JAVA.Esercizi.Scuola;

import java.util.Scanner;

public class Studente extends Persona {

    Scanner input = new Scanner(System.in);

    private int classe = 0;
    private char sezione = 'U'; // undefined

    // costruttore
    public Studente(String nome, String cognome, int annoNascita, int classe, char sezione){
        super(nome, cognome, annoNascita);

        setClasse(classe);
        setSezione(sezione);

    }

    public void setClasse(int classe){

        if(classe <= 0 || classe > 5) {
            System.out.print("Classe inserita non valida. Reinserisci: ");
            classe = input.nextInt();
        } else {
            this.classe = classe;
        }
    }

    public int getClasse(){
        return classe;
    }

    public void setSezione(char sezione){
        this.sezione = sezione;
    }

    public char getSezione(){
        return sezione;
    }

    // override metodo di filtraggio anno di nascita
    @Override
    public void setAnnoNascita(int annoNascita){

        if(annoNascita >= 2012){
            this.annoNascita = annoNascita;
         } else {
            System.out.println("Anno di nascita non valido. Registrazione studente non avvenuta.");
        } 
    }

    @Override
    public int getAnnoNascita(){
        return annoNascita;
    }

    // metodo di calcolo numero matricola
    public int calcoloNumeroMatricola(){
        int numeroMatricola = (int)(Math.random() * 999999);
        System.out.println("Numero di matricola: " + numeroMatricola);
        return numeroMatricola;
    }

    // metodo di stampa lista 
    @Override
    public void stampaLista(){
        System.out.println("Nome: " + getNome());
        System.out.println("Cognome: " + getCognome());
        System.out.println("Anno di Nascita: " + getAnnoNascita());
        System.out.println("Classe: " + getClasse());
        System.out.println("Sezione: " + getSezione());
        calcoloNumeroMatricola();
    }
   
}
