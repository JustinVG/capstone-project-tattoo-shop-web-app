/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Models.Categories;
import Models.Items;
import Models.Users;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

/**
 *
 * @author 709488
 */
public class ItemsDB {
    
    public List<Items> getAll(String owner) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Users user = em.find(Users.class, owner);
            return user.getItemsList();
        }
        finally {
        em.close();
        }
    }
    public Items get (int itemID) throws Exception{
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Items item = em.find(Items.class, itemID);
            return item;
        }finally {
            em.close();
            
        }
    }
    public void insert(Items item) throws Exception{
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        
        try {
            Users user = item.getOwner();
            user.getItemsList().add(item);
            trans.begin();
            em.persist(item);
            em.merge(user);
            trans.commit();
        }
        catch (Exception ex) {
            trans.rollback();
        }
        finally {
            em.close();
        }
    }
    
     public void update(Items item) throws Exception{
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        
        try {
            Users user = item.getOwner();
            trans.begin();
            em.merge(item);
            trans.commit();
        }
        catch (Exception ex) {
            trans.rollback();
        }
        finally {
            em.close();
        }
    }
     public void delete(Items item) throws Exception{
          EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        
        try {
            Users user = item.getOwner();
            user.getItemsList().remove(item);
            trans.begin();
            em.merge(user);
            em.remove(em.merge(item));
            trans.commit();
        }
        catch (Exception ex) {
            trans.rollback();
        }
        finally {
            em.close();
        }
     }
    
    
}
