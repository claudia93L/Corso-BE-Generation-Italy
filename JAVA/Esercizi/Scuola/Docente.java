package JAVA.Esercizi.Scuola;

import java.util.Scanner;

public class Docente extends Persona {

    Scanner input = new Scanner(System.in);
    private String materia = "-inserire materia-";

    // costruttore
    public Docente(String nome, String cognome, int annoNascita, String materia){
        super(nome, cognome, annoNascita);

        setMateria(materia);
    }

    public void setMateria(String materia){
        this.materia = materia;
    }

    public String getMateria(){
        return materia;
    }

    // override metodo di filtraggio anno di nascita
    @Override
    public void setAnnoNascita(int annoNascita){

        if(annoNascita >= 1962){
            this.annoNascita = annoNascita;
        } else {
            System.out.println("Anno di nascita non valido. Registrazione docente non avvenuta.");
        }
    }

    @Override
    public int getAnnoNascita(){
        return annoNascita;
    }

    // metodo di stampa lista
    @Override
    public void stampaLista(){
        System.out.println("Nome: " + getNome());
        System.out.println("Cognome: " + getCognome());
        System.out.println("Anno di Nascita: " + getAnnoNascita());
        System.out.println("Materia: " + getMateria());
    }
    
}
