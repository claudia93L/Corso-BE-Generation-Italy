package JAVA.Set13;

import java.util.Scanner;

public class RettangoloCostruttoreTest {
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        RettangoloCostruttore rettangoloUno = new RettangoloCostruttore();
        System.out.println("Crea rettangolo n°1");
        System.out.print("Base: ");
        int inputBase = input.nextInt();
        System.out.print("Altezza: ");
        int inputAltezza = input.nextInt();

        rettangoloUno.disegnaRettangolo(inputBase, inputAltezza);

        RettangoloCostruttore rettangoloDue = new RettangoloCostruttore(inputBase, inputAltezza);

        System.out.println();
        System.out.println("Crea rettangolo n°2");
        System.out.print("Base: ");
        int inputBase2 = input.nextInt();
        System.out.print("Altezza: ");
        int inputAltezza2 = input.nextInt();

        rettangoloDue.disegnaRettangolo(inputBase2, inputAltezza2);

        input.close();
    }
}
