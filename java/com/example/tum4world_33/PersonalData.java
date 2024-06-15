package com.example.tum4world_33;

import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.time.Year;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import java.util.Locale;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;


@WebServlet(name = "PersonalData", value = "/PersonalData")
@MultipartConfig
public class PersonalData extends HttpServlet {

    String dbURL = "jdbc:derby://localhost:1527/tum4worldDB";
    String user = "APP";
    String pass = "admin";
    Connection connection = null;

    //Apriamo la connessione al DB
    public void init() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            connection = DriverManager.getConnection(dbURL, user, pass);
        } catch (SQLException | ClassNotFoundException | NullPointerException e) {
            throw new RuntimeException(e);
        }
    }

    protected void processData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        Utente u = new Utente();
        HttpSession session = request.getSession(false);
        u.setUsername((String) session.getAttribute("username"));
        u.setNome((String) session.getAttribute("nome"));
        u.setCognome((String) session.getAttribute("cognome"));
        u.setDataNascita((String) session.getAttribute("dataNascita"));
        u.setEmail((String) session.getAttribute("email"));
        u.setTelefono((String) session.getAttribute("telefono"));
        u.setTipo_account(AccountType.getEnum((int) session.getAttribute("tipo_account")));

        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        try (PrintWriter out = response.getWriter()) {
            Gson gson = new Gson();
            out.println(gson.toJson(u));
            out.flush();
        } catch (IOException e) {
            System.out.println(e);
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


    //Chiudiamo la connessione al DB
    public void destroy() {
        try{
            connection.close();
        }catch (SQLException e){
            System.out.println(e);
        }
    }

}
