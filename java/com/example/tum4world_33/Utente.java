package com.example.tum4world_33;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;


//Bean per memorizzare i dati dell'utente
public class Utente implements Serializable {

    String nome;
    String cognome;
    String dataNascita;
    String email;
    String telefono;
    String username;
    String password;
    AccountType tipo_account;


    //Costruttore senza parametri
    public Utente(){}

    //Getters
    public String getNome(){
        return this.nome;
    }

    public String getCognome(){
        return this.cognome;
    }

    public String getData(){
        return this.dataNascita;
    }

    public String getEmail(){
        return this.email;
    }

    public String getTelefono(){
        return this.telefono;
    }

    public String getUsername(){
        return this.username;
    }

    public String getPassword(){
        return this.password;
    }

    public AccountType getTipo_account(){
        return this.tipo_account;
    }

    //Setters
    public void setNome(String n){
        this.nome = n;
    }

    public void setCognome(String c){
        this.cognome = c;
    }

    public void setDataNascita(String d){
        this.dataNascita = d;
    }

    public void setEmail(String e){
        this.email = e;
    }

    public void setTelefono(String t){
        this.telefono = t;
    }

    public void setUsername(String u){
        this.username = u;
    }

    public void setPassword(String p){
        this.password = p;
    }

    public void setTipo_account(AccountType a){
        this.tipo_account = a;
    }

}
