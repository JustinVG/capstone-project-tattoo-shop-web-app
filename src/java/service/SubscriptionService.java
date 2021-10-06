
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import service.SubscriptionDB;
import Models.Subscription;
import java.util.List;

/**
 *
 * @author 834171
 */
public class SubscriptionService {

    private SubscriptionDB subscriptionDB;

    public SubscriptionService() {
        subscriptionDB = new SubscriptionDB();
    }
        
    public List<Subscription> getAll() throws Exception {
        return subscriptionDB.getAll();
    }
     public int delete(String email) throws Exception {
        Subscription deletedSubscription = subscriptionDB.getEmail(email);
        
        if (deletedSubscription.getEmail().equals("admin")) {
            return 0;
        }
        return subscriptionDB.delete(deletedSubscription);
    }

    public int insert(String email) throws Exception {
        Subscription subscription = new Subscription(email);
        return subscriptionDB.insert(subscription);
    }
}

