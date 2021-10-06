/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import DataAccess.UserDB;
import Models.Users;

/**
 *
 * @author 709488
 */
public class AccountService {
    
    public Users login(String username, String password) {
        UserDB userDB = new UserDB();
        
        try {
            Users user = userDB.get(username);
            if (password.equals(user.getPassword())) {
                return user;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return null;
    }
}
