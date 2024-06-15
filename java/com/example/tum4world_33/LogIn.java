package com.example.tum4world_33;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "LogIn", value = "/LogIn")
@MultipartConfig
public class LogIn extends HttpServlet {

    String dbURL = "jdbc:derby://localhost:1527/tum4worldDB";
    String dbUser = "APP";
    String dbPassword = "admin";

    Connection connection = null;

    boolean accountExists;

    public void init() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            /* apro la connessione */
            connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);
        } catch (ClassNotFoundException | NullPointerException | SQLException e) {
            System.out.println(e);
        }
    }

    public void destroy() {
        /* chiudo la connessione */
        try {
            connection.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    /** logIn.js manda una richiesta **/
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Utente account = new Utente();
        accountExists = false;

        //making query
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String query = "SELECT * FROM UTENTI WHERE USERNAME='" + username + "' AND PASSWORD='" + password + "'";

            //creo Statement in cui inserire la query
            Statement stat = connection.createStatement();
            ResultSet results = stat.executeQuery(query);

            //recupero i dati dalla query
            while (results.next()){
                accountExists = true;
                account.setNome(results.getString(1));
                account.setCognome(results.getString(2));
                account.setDataNascita(String.valueOf(results.getDate(3)));
                account.setTelefono(results.getString(5));
                account.setEmail(results.getString(4));
                account.setUsername(username);
                account.setTipo_account(AccountType.getEnum(results.getInt(8)));
            }
        } catch (SQLException | NullPointerException e) {
            System.out.println(e);
        }

        //preparing and sending json response
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        if(accountExists) {

            //CREO LA SESSION
            HttpSession oldSession = request.getSession(false);
            if (oldSession != null) {
                oldSession.invalidate();
            }

            //setting session to expiry in 5 mins
            //newSession.setMaxInactiveInterval(5*60);
            HttpSession session = request.getSession();
            session.setAttribute("username", account.getUsername());
            session.setAttribute("nome", account.getNome());
            session.setAttribute("cognome", account.getCognome());
            session.setAttribute("dataNascita", account.getData());
            session.setAttribute("telefono", account.getTelefono());
            session.setAttribute("email", account.getEmail());
            session.setAttribute("tipo_account", account.getTipo_account().getTipo());
            System.out.println((session.getAttribute("cookies")));

            try (PrintWriter out = response.getWriter()) {
                Gson gson = new Gson();
                String account_gson = gson.toJson(account);

                out.println(account_gson);
                out.flush();
            } catch (IOException e) {
                System.out.println(e);
            }
            } else {
                response.setStatus(500);
            }
    }

    /** DO GET **/
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processData(request,response);
    }

    /** DO POST **/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processData(request,response);
    }
}