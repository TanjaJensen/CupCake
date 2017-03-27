package business.model;

/**
 *
 * @author Tanja
 */
public class User {

    private int id;
    private String name;
    private String password;
    private double balance;

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name
                + ", password=" + password + ", balance=" + balance + '}';
    }

}
