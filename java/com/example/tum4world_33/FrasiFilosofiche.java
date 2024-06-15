package com.example.tum4world_33;

import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.sound.midi.SysexMessage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;

@WebServlet(name = "FrasiFilosofiche", value = "/FrasiFilosofiche")
public class FrasiFilosofiche extends HttpServlet {

    String[] elencoFrasi = {
        "Ogni cosa che puoi immaginare, la natura l’ha già creata.",
        "Guardare la bellezza della natura è il primo passo per purificare la mente.",
        "Ogni filo d’erba sembra contenere una biblioteca dedicata alla meraviglia, al silenzio e alla bontà.",
        "Troverai di più nei boschi che nei libri. Gli alberi e le pietre ti insegneranno ciò che non si può imparare da maestri.",
        "La via più chiara verso l’Universo è attraverso una foresta selvaggia.",
        "La natura non è un posto da visitare. É casa nostra.",
        "C'è un libro sempre aperto per tutti gli occhi: la natura.",
        "In ogni passeggiata nella natura l'uomo riceve molto più di ciò che cerca."
    };

    Random random = new Random();
    int indice = 0;

    public void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        indice = random.nextInt(elencoFrasi.length);

        response.setCharacterEncoding("utf-8");

        try (PrintWriter out = response.getWriter()) {
            out.println(elencoFrasi[indice]);
            out.flush();
        } catch (IOException e) {
            System.out.println(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
