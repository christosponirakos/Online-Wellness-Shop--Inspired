package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Product;
import com.mycompany.productinspired.entities.Purchase;
import com.mycompany.productinspired.entities.User;
import com.mycompany.productinspired.services.IProductsService;
import com.mycompany.productinspired.services.IPurchaseService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/purchases")
public class PurchaseController {

    private String listurl = "list";
    private String editurl = "edit";
    private String deleteurl = "delete";
    private String updateurl = "update";
    private String newurl = "new";

    @Autowired
    IPurchaseService purchaseService;

    @Autowired
    IProductsService productService;

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listAllPurchases(ModelMap view) {
        List<Purchase> purchases = purchaseService.findAllPurchasess();
        view.addAttribute("purchases", purchases);
        view.addAttribute("editurl", editurl);
        view.addAttribute("deleteurl", deleteurl);
        view.addAttribute("newurl", newurl);
        return ("purchaseList");
    }

    @RequestMapping(value ="/new", method = RequestMethod.GET)
    public String newPurchase(ModelMap view) {
        Purchase purchase = new Purchase();
        view.addAttribute("purchase", purchase);
        view.addAttribute("listurl", listurl);
        return ("newpurchase");
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String savePurchase(ModelMap view, @ModelAttribute("purchase") @Validated Purchase purchase, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "newpurchase";
        }
        if(purchaseService.savePurchase(purchase)) {
		view.addAttribute("success", "Purchase " + purchase.getId() + " "+ purchase.getDate() + " registered successfully");
                return ("redirect:/purchases/list");
        }
        else {
            view.addAttribute("message", new String("Something went wrong! Please try again! "));
        }
            view.addAttribute("listurl", listurl);
        return("redirect:/purchases/list");
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deletePurchase(ModelMap view, @PathVariable int id) {
        if (purchaseService.deletePurchaseById(id)) {
            view.addAttribute("msg", new String("Deleted Successfully!"));
        } else {
            view.addAttribute("msg", new String("Not Deleted!"));
        }
        return ("redirect:/purchases/list");
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editPurchase(ModelMap view, @PathVariable int id) {
        Purchase purchase = purchaseService.findPurchaseById(id);
        view.addAttribute("purchase", purchase);
        view.addAttribute("updateurl", updateurl);
        return ("editpurchase");
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updatePurchase(ModelMap view, Purchase purchase) {
        purchaseService.updatePurchase(purchase);
        view.addAttribute("msg", new String(""));
       
        return ("redirect:/purchases/list");
    }
    
    

//    @RequestMapping(value = {"/100142"}, method = RequestMethod.GET)
//    public String purchasesByUserId(ModelMap model) {
//        List<Product> products = productService.getProductByPurchaseId(100142);
//        model.addAttribute("products", products);
//        return "productList";
//    }
//    
}
