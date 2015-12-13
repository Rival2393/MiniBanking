package my.banking.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Dima on 12.12.2015.
 */
@WebServlet("/")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
        /*long card = Long.parseLong(req.getParameter("Card"));
        String password = req.getParameter("Password");
        DataAccessObject dao = new DataAccessObject(DataSource.getConnection());
        try {
            Client client = dao.getClient(card, password);
            req.getRequestDispatcher("/menu.jsp");
        } catch (SQLException e) {
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
        req.getRequestDispatcher("/menu.jsp");*/
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
