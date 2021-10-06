
package DataAccess;

import Models.Items;
import Models.Users;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;


public class UserDB {
    public Users get(String username ){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            Users user = em.find(Users.class, username);
            return user;
        }
        finally {
            em.close();
        }
    }
    public Users getPassword(String password){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            Users user = em.find(Users.class, password);
            return user;
            
        }finally {
            em.close();
        }
    }
    public String checkName(String username) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {Users user = em.find(Users.class, username);
            return user.getUsername();
            
        }
        finally {
            em.close();
        }
    }
     public String checkPassword(String password) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {Users user = em.find(Users.class, password);
            return user.getPassword();
            
        }
        finally {
            em.close();
        }
    }
      public int insert(Users user) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            // Give user a role (3 is regular user)
          //  Role role = em.find(Role.class, 3);
            //user.setRole(role);
            
            trans.begin();
            em.persist(user);
            trans.commit();
            return 1;
        } catch (Exception ex) {
            trans.rollback();
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, "Cannot insert " + user.toString(), ex);
            throw new Exception("Error inserting user");
        } finally {
            em.close();
        }
    }

    public int update(Users user) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.merge(user);
            trans.commit();
            return 1;
        } catch (Exception ex) {
            trans.rollback();
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, "Cannot update " + user.toString(), ex);
            throw new Exception("Error updating user");
        } finally {
            em.close();
        }
    }

    public List<Users> getAll() throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            List<Users> users = em.createNamedQuery("Users.findAll", Users.class).getResultList();
            return users;                
        } finally {
            em.close();
        }
    }

    public Users getUser(String username) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Users user = em.find(Users.class, username);
            return user;
        } finally {
            em.close();
        }
    }

    public int delete(Users user) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.remove(em.merge(user));
            trans.commit();
            return 1;
        } catch (Exception ex) {
            trans.rollback();
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, "Cannot delete " + user.toString(), ex);
            throw new Exception("Error deleting user");
        } finally {
            em.close();
        }
    }
}

