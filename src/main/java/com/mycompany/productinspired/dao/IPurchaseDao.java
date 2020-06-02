/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.productinspired.dao;


import com.mycompany.productinspired.entities.Purchase;
import java.util.List;

/**
 *
 * @author ticho
 */
public interface IPurchaseDao {

    
    public List<Purchase> findAllPurchasess();

    public Purchase findPurchaseById(int id);

    public boolean deletePurchaseById(int id);

    public boolean updatePurchase(Purchase purchase);
    
    public boolean savePurchase(Purchase purchase);
//    
//    public List<Purchase> getPurchasesForCustomerById(int id);
//    
//    public List<Purchase> getPendingPurchases();
//    
//    public List<Purchase> getDonePurchases();

}
