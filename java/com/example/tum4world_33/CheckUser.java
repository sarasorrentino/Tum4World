package com.example.tum4world_33;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet(name = "CheckUser", value = "/CheckUser")
@MultipartConfig
public class CheckUser extends HttpServlet {

    String dbURL = "jdbc:derby://localhost:1527/tum4worldDB";
    String user = "APP";
    String pass = "admin";
    Connection connection = null;
    boolean ok;

    /** Create connection **/
    public void init() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connection = DriverManager.getConnection(dbURL, user, pass);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException | NullPointerException e) {
            throw new RuntimeException(e);
        }
    }

    /** Processing request **/
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        //Recupero l'username
        String username = request.getParameter("username");
        System.out.println("Valore username" + username);
        ok = true;

        //Mi connetto al DB per vedere se esiste già un utente con lo stesso username
        try {

            String query = "SELECT * FROM UTENTI WHERE USERNAME = '" + username + "'";

            Statement stmt = connection.createStatement();
            ResultSet result = stmt.executeQuery(query);

            while (result.next()) {
                ok = false;
            }

        } catch (SQLException e) {
//            throw new RuntimeException(e);
            response.setStatus(500);

        }

        if (ok) { //Se l'utente è univoco
            response.setStatus(200);

        } else { //Esiste già un utente con questo username

            response.setStatus(409); //Imposto lo stato di errore
        }


    }

    /** DO GET **/
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processData(request, response);
    }

    /** DO POST **/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processData(request, response);
    }

    /** Close connection **/
    public void destroy() {
        try {
            connection.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

}
