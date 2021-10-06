package service;

import DataAccess.UserDB;
import Models.Users;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.List;

public class UserService {

    private UserDB userDB;

    public UserService() {
        userDB = new UserDB();
    }

    public Users getUser(String username) throws Exception {
        return userDB.getUser(username);
    }

    public List<Users> getAll() throws Exception {
        return userDB.getAll();
    }

    public int update(String username, String password,String email, String firstname, String lastname , boolean isActive) throws Exception {
        Users user = getUser(username);
        user.setPassword(password);
        
        user.setFirstName(firstname);
        user.setLastName(lastname);
        user.setEmail(email);
        user.setActive(isActive);
        return userDB.update(user);
    }
    public int promoteUser(String username, boolean isAdmin) throws Exception{
        Users user = getUser(username);
        user.setIsAdmin(isAdmin);
        return userDB.update(user);
    }
    public int updateActive(String username, boolean isActive) throws Exception{
        Users user = getUser(username);
        user.setActive(isActive);
        return userDB.update(user);
    }

    public int delete(String username) throws Exception {
        Users deletedUser = userDB.getUser(username);
        // do not allow the admin to be deleted
        if (deletedUser.getUsername().equals("admin")) {
            return 0;
        }
        return userDB.delete(deletedUser);
    }

    public int insert(String username, String password, String email, String firstName, String lastName, boolean active, boolean isAdmin) throws Exception {
       /* SecureRandom random = new SecureRandom();
        byte[] salt = new byte[16];
        random.nextBytes(salt);
        MessageDigest md = MessageDigest.getInstance("SHA-512");
        md.update(salt);
        byte[] hashedPassword = md.digest(password.getBytes(StandardCharsets.UTF_8));
        String passwordHash = new String(hashedPassword);*/
        Users user = new Users(username, password, email, firstName, lastName, active, isAdmin );
        
        return userDB.insert(user);
    }
}