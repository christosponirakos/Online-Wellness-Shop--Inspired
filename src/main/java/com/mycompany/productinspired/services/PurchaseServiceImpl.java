/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.productinspired.services;


import com.mycompany.productinspired.dao.IPurchaseDao;
import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ticho
 */
@Service("purchaseService")
@Transactional
public class PurchaseServiceImpl implements IPurchaseService {
    
    @Autowired
    private IPurchaseDao dao;
    
    @Override
    public List<Purchase> findAllPurchasess() {
        List<Purchase> purchases = dao.findAllPurchasess();
        return purchases;
    }

    @Override
    public Purchase findPurchaseById(int id) {
       return dao.findPurchaseById(id);
    }

    @Override
    public boolean deletePurchaseById(int id) {
             return dao.deletePurchaseById(id);
    }

    @Override
    public boolean updatePurchase(Purchase purchase) {
          dao.updatePurchase(purchase);
        return true;
    }

    @Override
    public boolean savePurchase(Purchase purchase) {
          return dao.savePurchase(purchase);
    }

    @Override
    public List<Purchase> getPurchasesForUserById(int id) {

        return dao.getPurchasesForUserById(id);
    }
    
    
}
