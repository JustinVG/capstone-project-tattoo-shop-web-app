
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author 834171
 */
public class Subscription {

    private String email;

    public Subscription() {
    }

    /**
     *
     * @param email
     */
    public Subscription(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return " email: " + email;
    }
}
