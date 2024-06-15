package com.example.tum4world_33;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.text.ParseException;

import java.util.*;
import javax.mail.*;
import javax.mail.MessagingException;
import javax.mail.internet.*;
import javax.activation.*;

@WebServlet(name = "SendEmail", value = "/SendEmail")
@MultipartConfig
public class SendEmail extends HttpServlet{

    protected void sendEmail(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException, MessagingException{

        String to = "tum4world@nessunonoluogonoesiste.com";
        String from = request.getParameter("email");
        String body = request.getParameter("email_body");
        String subject = request.getParameter("combo_box");
        String host = "localhost";


        Properties properties = System.getProperties();
        properties.setProperty("mail.smtp.host", host);
        Session session = Session.getDefaultInstance(properties);



        try{
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(body);

            //Transport.send(message);

        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    /** DO GET **/
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            sendEmail(request,response);
        } catch (ParseException | MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    /** DO POST **/
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            sendEmail(request,response);
        } catch (ParseException | MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
