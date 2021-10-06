/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Models.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.UserService;

/**
 *
 * @author 709488
 */
public class AccountServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserService us = new UserService();
        
        Object usName = session.getAttribute("user_name");
        Users user;
        try {
            user = us.getUser((String) usName);
            request.setAttribute("selectedUser", user);
        } catch (Exception ex) {
            Logger.getLogger(AccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
                
        
        getServletContext().getRequestDispatcher("/WEB-INF/account.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String action = request.getParameter("action");
    UserService us = new UserService();
        
        try {
            if (action.equals("edit")) {
            us.update(username, password, email, firstname, lastname, true);
            }
            if (action.equals("deactivate")){
                us.update(username, password, email, firstname, lastname, false);
                getServletContext().getRequestDispatcher("/WEB-INF/deactivate.jsp").forward(request, response);
                return;
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        HttpSession session = request.getSession();
        
        Object usName = session.getAttribute("user_name");
        Users user;
        try {
            user = us.getUser((String) usName);
            request.setAttribute("selectedUser", user);
        } catch (Exception ex) {
            Logger.getLogger(AccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        getServletContext().getRequestDispatcher("/WEB-INF/account.jsp").forward(request, response);
    }

    

}
