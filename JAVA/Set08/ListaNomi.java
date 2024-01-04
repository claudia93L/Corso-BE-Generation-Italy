package JAVA.Set08;

import java.util.ArrayList; // importo l'util dall'API di Java

public class ListaNomi {
    
    ArrayList<String> listaDiNomi; // dichiaro un ArrayList

    public void setLista(){
        listaDiNomi = new ArrayList<String>(); // istanzio l'ArrayList
        listaDiNomi.add("Luca Mei"); // aggiungo elementi all'ArrayList
        listaDiNomi.add("Marco Melis");
        listaDiNomi.add("Alice Serra");

        for(int i = 0; i < listaDiNomi.size(); i++){
            System.out.println(listaDiNomi.get(i));
        }

        System.out.println("Dimensione ArrayList: " + listaDiNomi.size());
    }

    public void modificaLista(){
        listaDiNomi.remove("Luca Mei");
        for(int i = 0; i < listaDiNomi.size(); i++){
            System.out.println("Prima modifica ArrayList: rimosso il nome 'Luca Mei' dall'array. Nome in lista: " + listaDiNomi.get(i));
        }
        System.out.println("Dimensione secondo ArrayList: " + listaDiNomi.size());

        System.out.println(); // riga di separazione

        listaDiNomi.add(1, "Luca Mei");
        for(int i = 0; i < listaDiNomi.size(); i++){
            System.out.println("Seconda modifica ArrayList: Aggiunto il nome 'Luca Mei' nell'array in posizione index 1. Nome in lista : " + listaDiNomi.get(i));
        } System.out.println("Dimensione terzo ArrayList: " + listaDiNomi.size());
    }
}
