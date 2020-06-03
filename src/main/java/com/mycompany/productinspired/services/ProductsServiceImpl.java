package com.mycompany.productinspired.services;


import com.mycompany.productinspired.dao.IProductDao;
import com.mycompany.productinspired.entities.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("productService")
@Transactional
public class ProductsServiceImpl implements IProductsService {
    
    @Autowired
    private IProductDao dao;

    @Override
    public List<Product> getAllProducts() {
        return dao.getAllProducts();
    }

//    @Override
//    public List<Product> getProductByCategory(String category) {
//        return dao.getProductByCategory(category);
//    }

    @Override
    public Product getProductById(int id) {
        return dao.getProductById(id);
    }

    @Override
    public boolean addProduct(Product p) {
        return dao.addProduct(p);
    }

    @Override
    public boolean updateProduct(Product p) {
        return dao.updateProduct(p);
    }

    @Override
    public boolean deleteProductById(int id) {
        return dao.deleteProductById(id);
    }
  
  

    @Override
    public List<Product> getProductByPurchaseId(int id) {
        return dao.getProductByPurchaseId(id);
    }

}
