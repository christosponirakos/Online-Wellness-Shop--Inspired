package com.mycompany.productinspired.dao;


import com.mycompany.productinspired.entities.Purchase;
import java.util.List;

public interface IPurchaseDao {
 
    public List<Purchase> findAllPurchasess();

    public Purchase findPurchaseById(int id);

    public boolean deletePurchaseById(int id);

    public boolean updatePurchase(Purchase purchase);
    
    public boolean savePurchase(Purchase purchase);
   public List<Purchase> getPurchasesForUserById(int id);
   
//    
//    public List<Purchase> getPendingPurchases();
//    
//    public List<Purchase> getDonePurchases();

}
