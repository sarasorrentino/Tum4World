package com.example.tum4world_33;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

@WebServlet(name = "DeleteUser", value = "/DeleteUser")
public class DeleteUser extends HttpServlet {

    String dbURL = "jdbc:derby://localhost:1527/tum4worldDB";
    String user = "APP";
    String pass = "admin";
    Connection connection = null;

    /** Create connection **/
    public void init() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connection = DriverManager.getConnection(dbURL, user, pass);
        } catch (SQLException | ClassNotFoundException | NullPointerException e) {
            throw new RuntimeException(e);
        }
    }

    /** Processing request **/
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {

        HttpSession session = request.getSession(false);
        String username = (String) session.getAttribute("username");


        try {
            String rimuovi = "DELETE FROM UTENTI WHERE USERNAME='"+username+"'";
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(rimuovi);
            response.setStatus(200);
        } catch (SQLException e) {
            response.sendError(500);
        }
    }

    /** DO GET **/
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processData(request,response);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    /** DO POST **/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processData(request,response);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    /** Close connection **/
    public void destroy() {
        try{
            connection.close();
        }catch (SQLException e){
            System.out.println(e);
        }
    }
}
