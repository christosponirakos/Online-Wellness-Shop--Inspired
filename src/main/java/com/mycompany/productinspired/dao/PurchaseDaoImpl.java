/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.productinspired.dao;


import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ticho
 */
@Repository("purchaseDao")
public class PurchaseDaoImpl extends AbstractDao<Integer, Purchase>  implements IPurchaseDao{

    @Override
    public List<Purchase> findAllPurchasess() {
        
        Criteria criteria = createEntityCriteria();
        return (List<Purchase>) criteria.list();
    }

    @Override
    public Purchase findPurchaseById(int id) {
          Purchase purchase = getByKey(id);
        if (purchase != null) {
            return purchase;
        }
        return null;
    }
    
    @Override
    public boolean savePurchase(Purchase purchase) {
        boolean notSaved = persist(purchase);
        if (notSaved) {
            return false;
        }
        return true;
    }

    @Override
    public boolean deletePurchaseById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean updatePurchase(Purchase purchase) {
        
         Purchase db_purchase = findPurchaseById(purchase.getId());
        if (db_purchase != null) {
            db_purchase.setDate(purchase.getDate());
            db_purchase.setPending(purchase.getPending());
            

            return savePurchase(db_purchase);
        } else {
            return false;
        }
    }

    @Override
    public List<Purchase> getPurchasesForUserById(int id){
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("user_id", id));
        List<Purchase> purchaseList = (List<Purchase>) crit.list();
//        for ( Purchase p : purchaseList){
//            Hibernate.initialize(p.getPurchaseDetailsList());
//        } 
        return purchaseList;
    }
    
}
