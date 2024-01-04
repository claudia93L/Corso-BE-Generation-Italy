package JAVA.Set07;

public class AscensoreTest {
    public static void main(String[] args) {
        IfAnnidatiAscensore mioAscensore = new IfAnnidatiAscensore(); // istanza
        System.out.println("Piano iniziale: " + mioAscensore.pianoCorrente);
        mioAscensore.apriPorta();
        mioAscensore.chiudiPorta();
        mioAscensore.vaiGiu();
        mioAscensore.vaiSu();
        mioAscensore.vaiSu();
        mioAscensore.vaiSu();
        mioAscensore.apriPorta();
        mioAscensore.chiudiPorta();
        mioAscensore.vaiGiu();
        mioAscensore.apriPorta();
        mioAscensore.vaiGiu();
        mioAscensore.apriPorta();
    }
}
