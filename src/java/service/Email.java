/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Address;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author 834171
 */
public class Email {
        
    
    public static void sendEmail(String mail,String mess, String mobile, String name, String body) throws AddressException,
            MessagingException,  NamingException,   GeneralSecurityException,   IOException {
      
      
        
        Context env = (Context) new InitialContext().lookup("java:comp/env"); 
        String username = (String) env.lookup("webmail-username");
        String password = (String) env.lookup("webmail-password");
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.transport.protocol","smtps");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", 465);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtps.quitwait", "false");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
       // Session session = Session.getDefaultInstance(properties);
        //session.setDebug(true);

       // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        };

        Session session = Session.getInstance(properties,auth);

        // creates a new e-mail message
        Message msg = new MimeMessage(session);
        msg.setSubject(mess);
        msg.setFrom(new InternetAddress(mail));
        InternetAddress[] toAddresses = {new InternetAddress(username)};
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject(name);
        msg.setText(body);
        //msg.setHeader(name, mobile);
        msg.setSentDate(new Date());
       // address the message
        Address fromAddress = new InternetAddress(mail);
        Address toAddress = new InternetAddress(username);
        msg.setFrom(fromAddress);
        msg.setRecipient(Message.RecipientType.TO, toAddress);
        // sends the e-mail
       //  Transport transport = session.getTransport();
       // Transport.connect(username, password);
        //transport.sendMessage(msg, msg.getAllRecipients());
        Transport.send(msg);
        //Transport.close();
    }

}