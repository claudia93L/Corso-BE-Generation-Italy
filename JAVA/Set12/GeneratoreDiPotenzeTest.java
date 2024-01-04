package JAVA.Set12;

public class GeneratoreDiPotenzeTest {
    public static void main(String[] args) {

        GeneratoreDiPotenze p = new GeneratoreDiPotenze(); 
        p.setBase(10);

            for (int i = 0; i < 10; i++) {
                System.out.println(p.prossimaPotenza());
        }
    }
}  
