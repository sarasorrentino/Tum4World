package com.example.tum4world_33;

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
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import java.util.Locale;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

@WebServlet(name = "FindUsers", value = "/FindUsers")
@MultipartConfig
public class FindUsers extends HttpServlet {

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

        //Preparo l'array di output
        ArrayList<Utente> output = new ArrayList<Utente>();

        //Prendo dalla request il tipo di utente che deve essere visualizzato
        String filtro = request.getParameter("tipoFiltro");
        String query = "";

        //Preparo la query sulla base del filtro
        if(filtro.equals("SIMPATIZZANTE")){
            query = "SELECT * FROM UTENTI WHERE TIPO_ACCOUNT =" + AccountType.SIMPATIZZANTE.getTipo();
        }
        else if(filtro.equals("ADERENTE")){
            query = "SELECT * FROM UTENTI WHERE TIPO_ACCOUNT =" + AccountType.ADERENTE.getTipo();
        }
        else {
            query = "SELECT * FROM UTENTI WHERE TIPO_ACCOUNT <> " + AccountType.AMMINISTRATORE.getTipo();
        }

        try{

            Statement stmt = connection.createStatement();
            ResultSet result = stmt.executeQuery(query);

            while(result.next()){
                Utente u = new Utente();
                u.setNome(result.getString(1));
                u.setCognome(result.getString(2));
                u.setDataNascita(result.getString(3));
                u.setEmail(result.getString(4));
                u.setTelefono(result.getString(5));
                u.setUsername(result.getString(6));
                u.setTipo_account(AccountType.getEnum(result.getInt(8)));
                output.add(u);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        //Prepariamo la risposta JSON e la mandiamo
        response.setContentType("application/json");
        response.setCharacterEncoding("utf-8");

        try(PrintWriter out = response.getWriter()){
            JsonArray array = new JsonArray();
            for(Utente u : output){
                Gson gson = new Gson();
                array.add(gson.toJson(u));
            }

            out.println(array);
            out.flush(); //Funzione che svuota lo stream sulla response

        }catch (IOException e){
            System.out.println(e);
            response.sendRedirect("error.html");
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
