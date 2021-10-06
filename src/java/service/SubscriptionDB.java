
package service;

import Models.Subscription;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author 834171
 */
public class SubscriptionDB {
     public int insert(Subscription subscription) throws SubscriptionDBException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();

        try {
            String preparedQuery = "INSERT INTO subscription (email) VALUES (?)";
            PreparedStatement ps = connection.prepareStatement(preparedQuery);
            ps.setString(1, subscription.getEmail());
            int rows = ps.executeUpdate();
            return rows;
        } catch (SQLException ex) {
            Logger.getLogger(SubscriptionDB.class.getName()).log(Level.SEVERE, "Cannot insert " + subscription.toString(), ex);
            throw new SubscriptionDBException("Error inserting");
        } finally {
            pool.freeConnection(connection);
        }
    }
      public List<Subscription> getAll() throws SubscriptionDBException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();

        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = connection.prepareStatement("SELECT * FROM subscription;");
            rs = ps.executeQuery();
            List<Subscription> subscription = new ArrayList<>();
            while (rs.next()) {
                subscription.add(new Subscription(rs.getString(rs.getString("email"))));
            }
            pool.freeConnection(connection);
            return subscription;
        } catch (SQLException ex) {
            Logger.getLogger(SubscriptionDB.class.getName()).log(Level.SEVERE, "Cannot read", ex);
            throw new SubscriptionDBException("Error getting");
        } finally {
            try {
                rs.close();
                ps.close();
            } catch (SQLException ex) {
            }
            pool.freeConnection(connection);
        }
    }
       public Subscription getEmail(String username) throws SubscriptionDBException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        String selectSQL = "SELECT * FROM subscription WHERE email = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = connection.prepareStatement(selectSQL);
            ps.setString(1, username);
            rs = ps.executeQuery();

            Subscription subscription = null;
            while (rs.next()) {
                subscription = new Subscription(rs.getString("email"));
            }
            pool.freeConnection(connection);
            return subscription;
        } catch (SQLException ex) {
            Logger.getLogger(SubscriptionDB.class.getName()).log(Level.SEVERE, "Cannot read users", ex);
            throw new SubscriptionDBException("Error getting Users");
        } finally {
            try {
                rs.close();
                ps.close();
            } catch (SQLException ex) {
            }
            pool.freeConnection(connection);
        }
    }
       public int delete(Subscription subscription) throws SubscriptionDBException {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        String preparedQuery = "DELETE FROM subscription WHERE email = ?";
        PreparedStatement ps;

        try {
            ps = connection.prepareStatement(preparedQuery);
            ps.setString(1, subscription.getEmail());
            int rows = ps.executeUpdate();
            return rows;
        } catch (SQLException ex) {
            Logger.getLogger(SubscriptionDB.class.getName()).log(Level.SEVERE, "Cannot delete " + subscription.toString(), ex);
            throw new SubscriptionDBException("Error deleting");
        } finally {
            pool.freeConnection(connection);
        }
    }
}
