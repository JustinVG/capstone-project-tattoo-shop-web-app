/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import DataAccess.CategoryDB;
import DataAccess.ItemsDB;
import Models.Categories;
import Models.Items;
import Models.Users;

/**
 *
 * @author 709488
 */
public class CategoryService {
     private CategoryDB catDB;

    public CategoryService() {
        catDB = new CategoryDB();
    }

    public Categories getCategory(int CategoryID) throws Exception {
        return catDB.get(CategoryID);
    }
    
     public void update (int CategoryID,String CategoryName) throws Exception{
        CategoryDB categoryDB = new CategoryDB();
        Categories category = categoryDB.get(CategoryID);
        category.setCategoryName(CategoryName);
        categoryDB.update(category);
    }
     public int insert(int CategoryID,String CategoryName) throws Exception {
         CategoryDB catDB = new CategoryDB();
        Categories category = new Categories(0, CategoryName );
        
        return catDB.insert(category);
    }
}
