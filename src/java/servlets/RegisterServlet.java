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
import service.UserService;

/**
 *
 * @author 709488
 */
public class RegisterServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
        
         getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String action = request.getParameter("action");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        UserService us = new UserService();
        
         try {
        if (action.equals("add")) {
                us.insert(username, password, email, firstname, lastname, true, false);
            }
         }catch (Exception ex) {
            request.setAttribute("errorMessage", " Could not perform that action.");
        }
        
         request.setAttribute("loginMessage", "You have been registered! return to login page to log in");
        
        
         getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        
    }

}
