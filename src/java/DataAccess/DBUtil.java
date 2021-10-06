package DataAccess;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
    private static final EntityManagerFactory emf =
        Persistence.createEntityManagerFactory("Assignment2PU");

    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}