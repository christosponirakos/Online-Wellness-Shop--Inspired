package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.services.IProductsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/products")
public class ProductsController {
    
     private String listurl = "list";
    private String editurl = "edit";
    private String deleteurl = "delete";
    private String updateurl = "update";
    private String newurl = "new";

    @Autowired
    IProductsService productsService;

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String getAllProducts(ModelMap view) {
        List<Product> products = productsService.getAllProducts();
        view.addAttribute("products", products);
        view.addAttribute("editurl", editurl);
        view.addAttribute("deleteurl", deleteurl);
        view.addAttribute("newurl", newurl);
        return ("productList");

    }

    @RequestMapping(value="/new", method = RequestMethod.GET)
    public String newProduct(ModelMap view) {
         Product product=new Product();
         view.addAttribute("product", product);
         view.addAttribute("listurl", listurl);
         return ("newproduct");         
    }
    


        
}
