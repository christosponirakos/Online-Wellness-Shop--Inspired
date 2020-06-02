package com.mycompany.productinspired.dao;


import com.mycompany.productinspired.entities.Product;
import java.util.List;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;


@Repository("productDao")
public class ProductDaoImpl extends AbstractDao<Integer,Product> implements IProductDao {

    @Override
    public List<Product> getAllProducts() {

        Criteria criteria = createEntityCriteria();
        List<Product> products = (List<Product>) criteria.list();        
        return  products;
    }
    
    
//
//    @Override
//    public List<Product> getProductByCategory(String category) {
//        Criteria crit = createEntityCriteria();
//        crit.add(Restrictions.eq("category", category));
//	List<Product> list = (List<Product>)crit.list();
//
//        return list;
//    }
//
//    @Override
//    public Product getProductById(int id) {
//        Product p = getByKey(id);
//        return p;
//    }
//    
//    @Override
//    public boolean addProduct(Product p){
//        try {
//            persist(p);
//            return true;
//        } catch (Exception e) {
//            return false;
//        }
//    }
//    
//    @Override
//    public boolean updateProduct(Product p){
//        try {
//            update(p);
//            return true;
//        } catch (Exception e) {
//            return false;
//        }
//    }
//    
//    @Override
//    public boolean deleteProductById(int id){
//        Product p = getByKey(id);
//        try{
//            delete(p);
//            return true;
//        }catch(Exception e){
//            System.out.println(e.getMessage());
//            return false;
//        }
//    }
//    

}
