package com.mycompany.productinspired.dao;

import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Root;
import org.hibernate.Criteria;
import org.hibernate.criterion.CriteriaQuery;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;


@Repository("purchaseDao")
public class PurchaseDaoImpl extends AbstractDao<Integer, Purchase> implements IPurchaseDao {
    
    



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
               Purchase purchase = getByKey(id);
        if(purchase != null) {
            delete(purchase);
            if(getByKey(id) == null) 
                return true;
        }
        return false;
    }

    @Override
    public boolean updatePurchase(Purchase purchase) {

        Purchase db_purchase = findPurchaseById(purchase.getId());
        if (db_purchase != null) {
            db_purchase.setDate(purchase.getDate());
            db_purchase.setUser(purchase.getUser());
            db_purchase.setPending(purchase.getPending());

            return savePurchase(db_purchase);
        } else {
            return false;
        }
    }

    @Override
    public List<Purchase> getPurchasesForUserById(int id) {
        Criteria crit = createEntityCriteria();
        Criteria uCrit = crit.createCriteria("user");
        uCrit.add(Restrictions.eq("id", id));
        List<Purchase> purchaseList = (List<Purchase>) uCrit.list();
        return purchaseList;
    }

//    @Override
//    public List<Product> getAllProductsForPurchaseId(int id) {
//    // System.out.println("-- find employees with supervisor Denise --");
//       
//      CriteriaBuilder cb = em.getCriteriaBuilder();
//      CriteriaQuery<Purchase> query = cb.createQuery(Purchase.class);
//      
//      
//      Root<Purchase> purchase = query.from(Purchase.class);
//      ListJoin<Purchase, Product> products = purchase.join(Employee_.tasks);
//      query.select(product)
//           .where(cb.equal(tasks.get(Task_.supervisor), "Denise"))
//           .distinct(true);
//      TypedQuery<Employee> typedQuery = em.createQuery(query);
//      typedQuery.getResultList().forEach(System.out::println);
//  }
//    }
}
