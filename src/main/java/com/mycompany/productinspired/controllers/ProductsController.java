package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.entities.Purchase;
import com.mycompany.productinspired.services.IProductsService;
import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    //brings all products
    
    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String getAllProducts(ModelMap view) {
        List<Product> products = productsService.getAllProducts();
        view.addAttribute("products", products);
        view.addAttribute("editurl", editurl);
        view.addAttribute("deleteurl", deleteurl);
        
        view.addAttribute("newurl", newurl);
        return ("productList");

    }
    //get form for new product
    @RequestMapping("/new")
    public String newProduct(ModelMap view) {
         Product product=new Product();
         view.addAttribute("product", product);
         view.addAttribute("listurl", listurl);
         return ("newproduct");         
    }
    
    
    @RequestMapping(value="/new", method=RequestMethod.POST)
    public String saveProduct (@ModelAttribute("product") @Validated Product product, BindingResult bindingResult, ModelMap view ){ 
            
        if(bindingResult.hasErrors()){ 
            return ("newproduct");
        }
        if(productsService.addProduct(product)){ 
            
           view.addAttribute("succes", "You have successfully added a new product");
           return ("productList");
        
        }else{ 
        
         view.addAttribute("message", new String ("Something wrong!Product was not added please try again!"));
        }
        view.addAttribute("listurl", listurl);
        return("newproduct");
        }
    
    
   
    
    }
            

        
