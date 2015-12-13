package my.banking.servlet;

import my.banking.dao.DataAccessObject;
import my.banking.dao.DataSource;
import my.banking.model.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Dima on 12.12.2015.
 */

@WebServlet("/checker")
public class CheckerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long card = Long.parseLong(req.getParameter("Card"));
        String password = req.getParameter("Password");
        DataAccessObject dao = new DataAccessObject(DataSource.getConnection());
        try {
            Client client = dao.getClient(card, password);
            req.getRequestDispatcher("/menu.jsp");
        } catch (SQLException e) {
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
