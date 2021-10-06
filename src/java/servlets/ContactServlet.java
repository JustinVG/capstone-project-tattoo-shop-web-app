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
import service.Email;
/**
 *
 * @author 709488
 */
public class ContactServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/contact.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mail = request.getParameter("mail");
        String mess = request.getParameter("mess");
        String mobile = request.getParameter("mobile");
        String name = request.getParameter("name");
        String artist = request.getParameter("artist");
        String body = "Hi I am " +name+ ". My moblie number is " +mobile+ ".I want to contact " +artist+ ". "+ mess; 
        String resultMessage = "";

        try {
            Email.sendEmail(mail, mess,mobile,name,body);
            resultMessage = "The message was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There was an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/WEB-INF/contact.jsp").forward(
                    request, response);
        }
    }

}
