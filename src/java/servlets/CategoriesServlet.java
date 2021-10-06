/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import DataAccess.CategoryDB;
import Models.Categories;
import Models.Users;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.CategoryService;
import service.UserService;

/**
 *
 * @author 709488
 */
public class CategoriesServlet extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryService cs = new CategoryService();
        String action = request.getParameter("action");
    
        if (action != null && action.equals("view")) {
            String SC = request.getParameter("selectedCategory");
            int selectedCategory = Integer.parseInt(SC);
            
            try {
                Categories category = cs.getCategory(selectedCategory);
                request.setAttribute("selectedCategory", category);
            } catch (Exception ex) {
                Logger.getLogger(AdminServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
       
        
        CategoryDB cb = new CategoryDB();
        List<Categories> list;
        try {
            list = cb.getAll();
            request.setAttribute("categories", list);
        } catch (Exception ex) {
            Logger.getLogger(CategoriesServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
             
        
        getServletContext().getRequestDispatcher("/WEB-INF/categories.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String category = request.getParameter("category");
        String catIDz = request.getParameter("catid");
        
        CategoryService cs = new CategoryService();
        
            try {
                if (action.equals("add")) {
                cs.insert(0,category);
                }
                else if (action.equals("edit")) {
                    int catID = Integer.parseInt(catIDz);
                        
                cs.update(catID, category);
            }
                
            }    
             catch (Exception ex) {
                Logger.getLogger(CategoriesServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        CategoryDB cb = new CategoryDB();
        List<Categories> list;
        try {
            list = cb.getAll();
            request.setAttribute("categories", list);
        } catch (Exception ex) {
            Logger.getLogger(CategoriesServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    
             
        
        
          getServletContext().getRequestDispatcher("/WEB-INF/categories.jsp").forward(request, response);
    }

  

}
