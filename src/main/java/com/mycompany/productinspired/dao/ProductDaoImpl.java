package com.mycompany.productinspired.dao;


import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;


@Repository("productDao")
public class ProductDaoImpl extends AbstractDao<Integer,Product> implements IProductDao {

    @Override
    public List<Product> getAllProducts() {

        Criteria criteria = createEntityCriteria();
        List<Product> products = (List<Product>) criteria.list();        
        return  products;
    }
    
    

//    @Override
//    public List<Product> getProductByCategory(String category) {
//        Criteria crit = createEntityCriteria();
//        crit.add(Restrictions.eq("category", category));
//	List<Product> list = (List<Product>)crit.list();
//
//        return list;
//    }

    @Override
    public Product findProductById(int id) {
        Product p = getByKey(id);
        return p;
    }
    
    @Override
    public boolean saveProduct(Product p){
        boolean notSaved = persist(p);
        if (notSaved) {
            return false;
        }
        return true;
    }
    
    @Override
    public boolean updateProduct(Product product){
      Product db_product=findProductById(product.getProductId());
      if(db_product !=null){ 
          db_product.setCategory(product.getCategory());
          db_product.setDetails(product.getDetails());
          db_product.setDuration(product.getDuration());
          db_product.setPrice(product.getPrice());
          db_product.setShortDescription(product.getShortDescription());
          db_product.setTitle(product.getTitle());
          
          return saveProduct(db_product);
      }else{ 
          return false;
      }
    }
    
    @Override
    public boolean deleteProductById(int id){
        Product p = getByKey(id);
        try{
            delete(p);
            return true;
        }catch(Exception e){
            System.out.println(e.getMessage());
            return false;
        }
    }

    @Override
    public List<Product> getProductByPurchaseId(int id) {
       
        Criteria crit = createEntityCriteria();
        Criteria uCrit = crit.createCriteria("product");
        uCrit.add(Restrictions.eq("id", id));
        List<Product> productList = (List<Product>) uCrit.list();
        return productList;
    }
    

}
