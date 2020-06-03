package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.entities.Purchase;
import com.mycompany.productinspired.services.IProductsService;
import com.mycompany.productinspired.services.IPurchaseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/purchases")
public class PurchaseController {

    @Autowired
    IPurchaseService purchaseService;
    
    @Autowired
    IProductsService productService;

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view) {
        List<Purchase> purchases = purchaseService.findAllPurchasess();
        view.addAttribute("purchases", purchases);

        return ("purchaseList");
    }
    
    
      @RequestMapping(value = {"/100142"}, method = RequestMethod.GET)
    public String purchasesByUserId(ModelMap model) {
//            String username = appService.getPrincipal();
//            User user = userService.findById(49);
            List<Product> products = productService.getProductByPurchaseId(100142);
            model.addAttribute("products",products);
//            model.addAttribute("loggedinuser", appService.getPrincipal());
//            model.addAttribute("pagetitle", "My purchase");
        return "productList";
    }
   
}
