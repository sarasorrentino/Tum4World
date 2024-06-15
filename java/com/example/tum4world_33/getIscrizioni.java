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

import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;


@WebServlet(name = "getIscrizioni", value = "/getIscrizioni")
@MultipartConfig
public class getIscrizioni extends HttpServlet {

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

        HttpSession session = request.getSession(false);
        String username = (String) session.getAttribute("username");

        String query = "SELECT ATTIVITA FROM ISCRIZIONI_ATTIVITA WHERE USERNAME='"+username+"'";
        ArrayList<Integer> arrayInt = new ArrayList<>();

        try {
            //Controllo se l'attività è già presente

            Statement stmt = connection.createStatement();
            ResultSet result = stmt.executeQuery(query);

            while (result.next()) {
                Integer i = result.getInt(1);
                arrayInt.add(i);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        try(PrintWriter out = response.getWriter()){
            JsonArray array = new JsonArray();
            for(Integer i : arrayInt){
                Gson gson = new Gson();
                array.add(gson.toJson(i));
            }

            out.println(array);
            out.flush(); //Funzione che svuota lo stream sulla response

        }catch (IOException e){
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
