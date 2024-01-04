package JAVA.Set06;

/*
1. Creare una classe Java Rubrica.
2. Dichiarare e istanziare due campi
StringBuilder per un nome+cognome (separati da spazio) e un numero di telefono di 10 cifre. Per il nome, inizializzare la capacità dell’oggetto StringBuilder a 8 (passando la capacità come argomento).
3. Creare un metodo mostraInfo(),dove:
a. Inserire i dati del nome, utilizzando il metodo append() di StringBuilder.
b. Convertire lo StringBuilder del nome in stringa per invocarne la stampa (metodo toString()) essendo la concatenazione con + possibile solo tra stringhe.

Verificare se lo StringBuilder del nome ha superato la dimensione 8 (metodo capacity()).
d. Inserire il numero di telefono nello StringBuilder dedicato (metodo append()).
e. Aggiungere, in una nuova istruzione, un trattino dopo terza e sesta cifra del numero originale (metodo insert(int offset, String str)), operando in due passaggi; i caratteri di uno StringBuilder si contano da 0.
f. Convertire lo StringBuilder del numero di telefono in stringa per invocarne la stampa (toString()).
Salvare il file, compilare ed eseguire RubricaTest.java (fornito) per verificare il risultato.
 */

public class Rubrica {
    public StringBuilder nome = new StringBuilder(8); // capacità 8 come argomento
    public StringBuilder telefono = new StringBuilder(); // numero di telefono

    public void mostraInfo() {
        nome.append("Nome" + " Cognome");
        telefono.append(3515005007L);
        telefono.insert(3,"-");
        telefono.insert(7,"-");
        System.out.println("Nome e cognome: " + nome.toString());
        System.out.println("La capacita' dell'oggetto e' di: " + nome.capacity());
        System.out.println("Numero di telefono: " + telefono.toString());

    }
}

/* Tipo di output atteso
    Nome: TuoNome TuoCognome
    Capacita’ dell’oggetto: 18
    Il numero di telefono e’: 347-000-1111 */
