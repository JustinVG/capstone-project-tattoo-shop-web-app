/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import DataAccess.CategoryDB;
import DataAccess.ItemsDB;
import DataAccess.UserDB;
import Models.Categories;
import Models.Items;
import Models.Users;
import java.util.List;

/**
 *
 * @author 709488
 */
public class InventoryService {
    public List<Items> getAll(String username) throws Exception{
        ItemsDB itemDB = new ItemsDB();
        List<Items> items = itemDB.getAll(username);
        return items;
    }
    public void insert(int itemID, String itemName, double price, String owner) throws Exception{
        Items item = new Items(0, itemName, price);
        CategoryDB catDB = new CategoryDB();
        UserDB userDB = new UserDB();
        Users user = userDB.get(owner);
        item.setOwner(user);
        Categories category = catDB.get(itemID);
        item.setCategory(category);
        ItemsDB itemDB = new ItemsDB();
        itemDB.insert(item);
        
    }
    
    public void update (int itemID, String itemName, double price, String owner) throws Exception{
        ItemsDB itemDB = new ItemsDB();
        Items item = itemDB.get(itemID);
        item.setItemName(itemName);
        item.setPrice(price);
        itemDB.update(item);
    }
    public void delete (int itemID) throws Exception{
        ItemsDB itemDB = new ItemsDB();
        Items item = itemDB.get(itemID);
        itemDB.delete(item);
    }
    
}
