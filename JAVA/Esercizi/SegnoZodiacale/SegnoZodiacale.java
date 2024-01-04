package JAVA.Esercizi.SegnoZodiacale;

public class SegnoZodiacale {
    
    public void calcolaSegnoZodiacale(int giorno, int mese){

        // versione senza annidamenti
        if(mese == 12 && giorno >= 22 && giorno <= 31 || mese == 1 && giorno >= 1 && giorno <= 19){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Capricorno");
        } else if(mese == 1 && giorno >= 20 && giorno <= 31 || mese == 2 && giorno >= 1 && giorno <= 19){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Acquario");
        } else if(mese == 2 && giorno >= 20 && giorno <= 29 || mese == 3 && giorno >= 1 && giorno <= 20){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Pesci");
        } else if(mese == 3 && giorno >= 21 && giorno <= 31 || mese == 4 && giorno >= 1 && giorno <= 19){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Ariete");
        } else if(mese == 4 && giorno >= 20 && giorno <= 30 || mese == 5 && giorno >= 1 && giorno <= 20){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Toro");
        } else if(mese == 5 && giorno >= 21 && giorno <= 31 || mese == 6 && giorno >= 1 && giorno <= 20){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Gemelli");
        } else if(mese == 6 && giorno >= 21 && giorno <= 30 || mese == 7 && giorno >= 1 && giorno <= 22){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Cancro");
        } else if(mese == 7 && giorno >= 23 && giorno >= 31 || mese == 8 && giorno >= 1 && giorno <= 23){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Leone");
        } else if(mese == 8 && giorno >= 24 && giorno <= 31 || mese == 9 && giorno >= 1 && giorno <= 22){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Vergine");
        } else if(mese == 9 && giorno >= 23 && giorno <= 30 || mese == 10 && giorno >= 1 && giorno <= 22){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Bilancia");
        } else if(mese == 10 && giorno >= 23 && giorno <= 31 || mese == 11 && giorno >= 1 && giorno <= 21){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Scorpione");
        } else if(mese == 11 && giorno >= 22 && giorno <= 30 || mese == 12 && giorno >= 1 && giorno <= 21){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Sagittario");
        } else {
            System.out.println("La data di nascita inserita non è valida");
        }

/* 
        // versione con annidamenti
       if(mese == 3){
        if(giorno >= 1 && giorno <= 20){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Pesci");
        } else if(giorno >= 21 && giorno <= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Ariete");
        }
       } else if(mese == 4){
        if(giorno >= 1 && giorno <= 19){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Ariete");
        } else if(giorno >= 20 && giorno <= 30){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Toro");
        }
       } else if(mese == 5){
        if(giorno >= 1 && giorno <= 20){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Toro");
        } else if(giorno >= 21 && giorno <= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Gemelli");
        }
       } else if(mese == 6){
        if(giorno >= 1 && giorno <= 20){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Gemelli");
        } else if(giorno >= 21 && giorno <= 30){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Cancro");
        }
       } else if(mese == 7){
        if(giorno >= 1 && giorno <= 22){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Cancro");
        } else if(giorno >= 23 && giorno >= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Leone");
        }
       } else if(mese == 8){
        if(giorno >= 1 && giorno <= 23){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Leone");
       } else if(giorno >= 24 && giorno <= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Vergine");
       }
    } else if(mese == 9){
        if(giorno >= 1 && giorno <= 22){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Vergine");
        } else if(giorno >= 23 && giorno <= 30){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Bilancia");
        }
    } else if(mese == 10){
        if(giorno >= 1 && giorno <= 22){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Bilancia");
        } else if(giorno >= 23 && giorno <= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Scorpione");
        }
    } else if(mese == 11){
        if(giorno >= 1 && giorno <= 21){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Scorpione");
        } else if(giorno >= 22 && giorno <= 30){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Sagittario");
        }
    } else if(mese == 12){
        if(giorno >= 1 && giorno <= 21){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Sagittario");
        } else if(giorno >= 22 && giorno <= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Capricorno");
        }
    } else if(mese == 1){
        if(giorno >= 1 && giorno <= 19){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Capricorno");
        } else if(giorno >= 20 && giorno <= 31){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Acquario");
        }
    } else if(mese == 2){
        if(giorno >= 1 && giorno <= 19){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Acquario");
        } else if(giorno >= 20 && giorno <= 29){
            System.out.println("Sei nato il " + giorno + "/" + mese + " per cui il tuo segno zodiacale e' Pesci");
        }
    } else {
        System.out.println("La data di nascita inserita non è valida");
    }
  */     

    }
}