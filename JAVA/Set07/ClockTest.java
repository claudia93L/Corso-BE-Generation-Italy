package JAVA.Set07;

public class ClockTest {
    public static void main(String[] args) {
        int currentTime = Integer.parseInt(args[0]);
        Clock myClock = new Clock();
        myClock.displayPartOfDay(currentTime);
    }
}
    