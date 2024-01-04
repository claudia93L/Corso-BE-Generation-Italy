package JAVA.Set06;

public class CustomerTest {
    public static void main(String[] args) {
        Customer cust1 = new Customer();
        Customer cust2 = new Customer();

        // cust1 - Assegnazione valori
        cust1.customerID = 785873;
        cust1.name = "Marco";
        cust1.emailAddress = "marco.77@gmail.com";

        // cust2 - Assegnazione valori
        cust2.customerID = 4659;
        cust2.name = "Michela";
        cust2.emailAddress = "michela.99@yahoo.com";

        cust1.displayCustomerInfo();
        cust2.displayCustomerInfo();

        cust1 = cust2;

        cust1.displayCustomerInfo();
    }
}
