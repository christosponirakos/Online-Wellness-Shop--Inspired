package com.mycompany.productinspired.dao;


import com.mycompany.productinspired.entities.Product;
import java.util.List;


public interface IProductDao {
    
    public List<Product> getAllProducts();
    
    public List<Product> getProductByCategory(String category);
    
    public Product findProductById(int id);
    
    public boolean saveProduct(Product product); 

    public boolean updateProduct(Product product);
    
    public boolean deleteProductById(int id);
    
    public List<Product> getProductByPurchaseId(int id);
    
}
