package my.banking.model;

/**
 * Created by Dima on 12.12.2015.
 */
public class Client {
    private long id;
    private String name;
    private Account account;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    private int passBuilder(String password){
        return password.hashCode();
    }
}
