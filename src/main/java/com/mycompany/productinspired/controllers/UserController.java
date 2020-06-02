package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import com.mycompany.productinspired.entities.User;
import com.mycompany.productinspired.services.IPurchaseService;
import com.mycompany.productinspired.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    IUserService userService;
    
    @Autowired
    IPurchaseService purchaseService;

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view) {
        List<User> users = userService.findAllUsers();
        view.addAttribute("users", users);
        return ("userList");
    }

    @RequestMapping(value = {"/byId"}, method = RequestMethod.GET)
    public String purchasesByUserId(ModelMap model) {
//            String username = appService.getPrincipal();
//            User user = userService.findById(49);
            List<Purchase> papaki = purchaseService.getPurchasesForUserById(49);
            model.addAttribute("papaki",papaki);
//            model.addAttribute("loggedinuser", appService.getPrincipal());
            model.addAttribute("pagetitle", "My purchase");
        return "userList";
    }
}
