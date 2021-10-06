/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import DataAccess.CategoryDB;
import Models.Categories;
import Models.Items;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.InventoryService;

/**
 *
 * @author 709488
 */
public class InventoryServlet extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         InventoryService is = new InventoryService();
        try {
            HttpSession session = request.getSession();
            String user = (String) session.getAttribute("user_name");
            List<Items> item = is.getAll(user);
            request.setAttribute("itemsList", item);
            
        } catch (Exception ex) {
            Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
           CategoryDB cb = new CategoryDB();
        try {
            List<Categories> list = cb.getAll();
             request.setAttribute("categories", list);
        } catch (Exception ex) {
            Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
         
         
        
        getServletContext().getRequestDispatcher("/WEB-INF/inventory.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session = request.getSession();
         String action = request.getParameter("action");
        String category = request.getParameter("category");
        String itemName = request.getParameter("itemName");
        String price = request.getParameter("price");
        String amount = request.getParameter("itemPrice");
         String user = (String) session.getAttribute("user_name");
       String itemID = request.getParameter("itemID");
          InventoryService is = new InventoryService();
          
          if (action.equals("add")) {
            try {
                double price2 = Double.parseDouble(price);
                 int cat2 = Integer.parseInt(category);
                is.insert(cat2, itemName, price2, user);
            } catch (Exception ex) {
                Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
          else if (action.equals("delete")) {
                
                int itemID2 = Integer.parseInt(itemID);
            try {
                is.delete(itemID2);
            } catch (Exception ex) {
                Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
          }
          else if (action.equals("plus")){
              double price3 = Double.parseDouble(amount);
              price3++;
              int itemID3 = Integer.parseInt(itemID);
              try {
                  is.update(itemID3, itemName, price3, user);
              }
              catch (Exception ex) {
                Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
          }
          else if (action.equals("minus")){
              double price3 = Double.parseDouble(amount);
              price3--;
              int itemID3 = Integer.parseInt(itemID);
              try {
                  is.update(itemID3, itemName, price3, user);
              }
              catch (Exception ex) {
                Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
          }
          List<Items> item = null;
          try {
            
            item = is.getAll(user);
            request.setAttribute("itemsList", item);
            
        } catch (Exception ex) {
            Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
          try {
              CategoryDB cb = new CategoryDB();
            List<Categories> list = cb.getAll();
             request.setAttribute("categories", list);
        } catch (Exception ex) {
            Logger.getLogger(InventoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    
        
        
      
       
        
       
        getServletContext().getRequestDispatcher("/WEB-INF/inventory.jsp").forward(request, response);
    }

   
}
