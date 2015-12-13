package my.banking.dao;

import my.banking.model.Account;
import my.banking.model.Client;

import java.rmi.NoSuchObjectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Dima on 12.12.2015.
 */
public class DataAccessObject {

    private Connection connection;

    public static final String getClientQuery = "select cl.user_id, cl.user_name, cl.account_id, ac.balance\n" +
            "from clients cl join accounts ac on (cl.ACCOUNT_ID = ac.ACCOUNT_ID)\n" +
            "where ac.CARD_NUMBER = ? and cl.USER_PASS = ?;";

    public DataAccessObject(Connection connection) {
        this.connection = connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public Client getClient(long card_number, String password) throws SQLException, NoSuchObjectException {
        Client client = new Client();
        Account account = new Account();
        PreparedStatement statement = connection.prepareStatement(getClientQuery);
        statement.setLong(1, card_number);
        statement.setLong(2, password.hashCode());
        ResultSet set = statement.executeQuery();
        if(set.next()){
            client.setId(set.getLong("CLIENT_ID"));
            client.setName(set.getString("CLIENT_NAME"));
            account.setAccountId(set.getLong("ACCOUNT_ID"));
            account.setBalance(set.getLong("BALANCE"));
            account.setCardNumber(card_number);
            client.setAccount(account);
            return client;
        }
        throw new NoSuchObjectException("No client available");
    }
}
