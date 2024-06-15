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


@WebServlet(name = "Donazioni", value = "/Donazioni")
@MultipartConfig
public class Donazioni extends HttpServlet {

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

        //Trovo l'anno corrente
        int currentYear = Year.now().getValue();
        int currentMonth = LocalDate.now().getMonthValue();

        //Preparo l'array di coppie key(mese), e valore (somma delle donazioni)
        ArrayList<Pair> output = new ArrayList<Pair>();

        for( int i=1; i<=12; i++){
            output.add(new Pair(i, 0)); //Popolo l'array solo con i mesi intanto
        }

        //Prendo dalla request il tipo di utente che deve essere visualizzato
        String query = "";

        try{

            Statement stmt = connection.createStatement();

            for(int i=0; i<currentMonth; i++){
                query = "SELECT SUM(EURO) FROM DONAZIONI WHERE MONTH(DATA) = " + output.get(i).month + " AND YEAR(DATA) = " + currentYear;

                ResultSet result = stmt.executeQuery(query);

                while(result.next()){
                    output.get(i).sum = result.getFloat(1);
                }
            }

        } catch (SQLException e) {
            response.setStatus(500);
        }

        //Prepariamo la risposta JSON e la mandiamo
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        try(PrintWriter out = response.getWriter()){
            JsonArray array = new JsonArray();
            for(Pair p : output){
                Gson gson = new Gson();
                array.add(gson.toJson(p));
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
