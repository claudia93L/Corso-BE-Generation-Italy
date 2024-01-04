package JAVA.Esercizi.Prenotazione;

import java.util.Scanner;
import java.util.InputMismatchException;

public class Prenotazione {

    Scanner input = new Scanner(System.in);
    String mesi[] = {"gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno", "luglio", "agosto", "settembre", "ottobre", "novembre", "dicembre"};

    private String nome;
    private String cognome;
    private int giornoIn;
    private String meseIn;
    private int annoIn;
    private int giornoOut;
    private String meseOut;
    private int annoOut;
    private long telefono;

    boolean chiediAncora = true;

    // incapsulamento

    public void setNome(String nome) {
        do {
            if (nome.length() <= 0 || nome.length() < 2) {
                System.out.print("Errore! Il numero minimo di caratteri e' 2. Reinserisci: ");
                nome = input.nextLine();
            } else {
                this.nome = nome;
                chiediAncora = false;
            }
        } while (chiediAncora);
    }

    public String getNome() {
        return nome;
    }

    public void setCognome(String cognome) {
        do {
            if (cognome.length() <= 0 || cognome.length() < 2) {
                System.out.print("Errore! Il numero minimo di caratteri e' 2. Reinserisci: ");
                nome = input.nextLine();
            } else {
                this.cognome = cognome;
                chiediAncora = false;
            }
        } while (chiediAncora);
    }

    public String getCognome() {
        return cognome;
    }

    public void setGiornoIn(int giornoIn) {
        try {
            if (giornoIn <= 0 || giornoIn > 31) {
                System.out.print("Giorno inserito non valido. Reinserisci: ");
                giornoIn = input.nextInt();
            } else {
                this.giornoIn = giornoIn;
                chiediAncora = false;
            }
        } catch (InputMismatchException exc) {
            System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
            giornoIn = input.nextInt();
        }
    }

    public int getGiornoIn() {
        return giornoIn;
    }

    public void setMeseIn(String meseIn) {

        this.meseIn = meseIn;
    }

    public String getMeseIn() {
        return meseIn;
    }

    public void setAnnoIn(int annoIn) {
        try {
            do {
                if (annoIn <= 0 || annoIn < 2022) {
                    System.out.print("L'anno inserito e' nel passato. Reinserisci: ");
                    annoIn = input.nextInt();
                } else {
                    this.annoIn = annoIn;
                    chiediAncora = false;
                }
            } while (chiediAncora);
        } catch (InputMismatchException exc) {
            System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
            annoIn = input.nextInt();
        }
    }

    public int getAnnoIn() {
        return annoIn;
    }

    public void setGiornoOut(int giornoOut) {
        try {
            do {
                if (giornoOut <= 0 || giornoOut > 31) {
                    System.out.print("Giorno inserito non valido. Reinserisci: ");
                    giornoOut = input.nextInt();
                } else {
                    this.giornoOut = giornoOut;
                    chiediAncora = false;
                }
            } while (chiediAncora);
        } catch (InputMismatchException exc) {
            System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
            giornoOut = input.nextInt();
        }
    }

    public int getGiornoOut() {
        return giornoOut;
    }

    public void setMeseOut(String meseOut) {

        this.meseOut = meseOut;
    }

    public String getMeseOut() {
        return meseOut;
    }

    public void setAnnoOut(int annoOut) {
        try {
            do {
                if (annoOut <= 0 || annoOut < 2022) {
                    System.out.print("L'anno inserito e' nel passato. Reinserisci: ");
                    annoOut = input.nextInt();
                } else {
                    this.annoOut = annoOut;
                    chiediAncora = false;
                }
            } while (chiediAncora);
        } catch (InputMismatchException exc) {
            System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
            annoOut = input.nextInt();
        }
    }

    public int getAnnoOut() {
        return annoOut;
    }

    public void setTelefono(long telefono) {
        try {
            do {
                if (telefono <= 0 || telefono < 10) {
                    System.out.print("Errore! Il numero minimo di cifre e' 10. Reinserisci: ");
                    telefono = input.nextLong();

                } else {
                    this.telefono = telefono;
                    chiediAncora = false;
                }
            } while (chiediAncora);
        } catch (InputMismatchException exc) {
            System.out.print("Dato non valido. Si accettano solo numeri interi. Reinserisci: ");
            telefono = input.nextLong();
        }
    }

    public long getTelefono() {
        return telefono;
    }

    // fine incapsulamento

    /* public String toString(){ 
        System.out.println("Nome: " + getNome());
        System.out.println("Cognome: " + getCognome());
        System.out.println("Numero di telefono: " + getTelefono());
        System.out.println("Check-In: " + getGiornoIn() + "/" + getMeseIn() + "/" + getAnnoIn());
        System.out.println("Check-Out: " + getGiornoOut() + "/" + getMeseOut() + "/" + getAnnoOut()); 
   
       }   */

    public void stampaPrenotazione() {
        System.out.println("Nome: " + getNome());
        System.out.println("Cognome: " + getCognome());
        System.out.println("Numero di telefono: " + getTelefono());
        System.out.println("Check-In: " + getGiornoIn() + "/" + getMeseIn() + "/" + getAnnoIn());
        System.out.println("Check-Out: " + getGiornoOut() + "/" + getMeseOut() + "/" + getAnnoOut());
    }  

}
