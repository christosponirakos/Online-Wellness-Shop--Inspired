/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.productinspired.services;

import com.mycompany.productinspired.entities.Purchase;
import java.util.List;

/**
 *
 * @author ticho
 */
public interface IPurchaseService {
    
     
    public List<Purchase> findAllPurchasess();

    public Purchase findPurchaseById(int id);

    public boolean deletePurchaseById(int id);

    public boolean updatePurchase(Purchase purchase);
   
    public boolean savePurchase(Purchase purchase);
     public List<Purchase> getPurchasesForUserById(int id);
   
}
