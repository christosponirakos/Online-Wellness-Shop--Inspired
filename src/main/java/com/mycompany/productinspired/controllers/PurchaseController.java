package com.mycompany.productinspired.controllers;


import com.mycompany.productinspired.entities.Purchase;
import com.mycompany.productinspired.services.IPurchaseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/purchases")
public class PurchaseController {
    
   

    
    @Autowired
    IPurchaseService purchaseService;
    
     @RequestMapping(value = { "/purchasesList"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view) {
        List<Purchase> purchases = purchaseService.findAllPurchasess();
        view.addAttribute("purchases", purchases);
      
        return ("listofpurchases");
    }
    
}
