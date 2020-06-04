package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.services.IProductsService;
import java.util.List;
import javax.validation.Valid;

import org.springframework.validation.BindingResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
        return ("productListUser");
    }

    //get form for new product
    @RequestMapping("/new")
    public String newProduct(ModelMap view) {
        Product product = new Product();
        view.addAttribute("product", product);
        view.addAttribute("listurl", listurl);
        return ("newproduct");
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String saveProduct(@ModelAttribute("product") @Validated Product product, BindingResult bindingResult, ModelMap view) {
        if (bindingResult.hasErrors()) {
            return ("newproduct");
        }
        if (productsService.saveProduct(product)) {
            view.addAttribute("success", "You have successfully added a new product");
            return ("redirect:/products/list");
        } else {
            view.addAttribute("message", new String("Something wrong!Product was not added please try again!"));
        }
        view.addAttribute("listurl", listurl);
        return ("redirect:/products/list");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editProduct(ModelMap view, @PathVariable int id) {
        Product product = productsService.findProductById(id);
        view.addAttribute("product", product);
        view.addAttribute("updateurl", updateurl);
        return "editproduct";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateProduct(Product product, ModelMap view) {
        productsService.updateProduct(product);
        view.addAttribute("success", "Product " + product.getTitle() + " updated successfully");
        return ("redirect:/products/list");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteProduct(ModelMap view, @PathVariable int id) {
        if (productsService.deleteProductById(id)) {
            view.addAttribute("msg", new String("Product is deleted Successfully!"));
        } else {
            view.addAttribute("msg", new String("Product has not been Deleted!"));
        }
        return "redirect:/products/list";
    }
    
    @RequestMapping(value = {"/nutrition"}, method = RequestMethod.GET)
    public String getNutritionProducts(ModelMap model) {
        List<Product> products=productsService.getProductByCategory("meat");
        model.addAttribute("products", products);
       
        model.addAttribute("pagetitle", "Nutrition Products");
       // model.addAttribute("loggedinuser", appService.getPrincipal());        
        return "productList";
    }
    
    
    
      @RequestMapping(value = {"/fitness"}, method = RequestMethod.GET)
    public String getFitnessProducts(ModelMap model) {
        List<Product> products=productsService.getProductByCategory("vegeterian");
        model.addAttribute("products", products);
       
        model.addAttribute("pagetitle", "Nutrition Products");
       // model.addAttribute("loggedinuser", appService.getPrincipal());        
        return "productList";
    }
    
    
    
    
}
