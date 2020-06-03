package com.mycompany.productinspired.services;

import com.mycompany.productinspired.entities.Product;
import java.util.List;

public interface IProductsService {

    public List<Product> getAllProducts();

    // public List<Product> getProductByCategory(String category);
    public Product getProductById(int id);

    public boolean addProduct(Product p);

    public boolean updateProduct(Product p);

    public boolean deleteProductById(int id);

}
