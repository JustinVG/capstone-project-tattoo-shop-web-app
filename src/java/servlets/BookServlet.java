/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.EmailBook;
/**
 *
 * @author 834171
 */
public class BookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/bookAppointment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sub = "Appointment";
        String mail = request.getParameter("mail");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String mobile = request.getParameter("mobile");
        String name = request.getParameter("name");
        String artist = request.getParameter("artist");
        String body = "Hi I am " +name+ ". My Email is " +mail+ ".I want to book an appointment with " +artist+ ". Date-"+date+ ".Time-"+time; 
        String resultMessage = "";

        try {
            EmailBook.sendEmail(mail,name,body,sub);
            resultMessage = "The message was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/WEB-INF/bookAppointment.jsp").forward(request, response);
        }
    }
        
    }
