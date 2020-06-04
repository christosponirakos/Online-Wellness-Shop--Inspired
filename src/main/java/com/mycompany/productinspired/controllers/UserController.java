package com.mycompany.productinspired.controllers;

import com.mycompany.productinspired.entities.Purchase;
import java.util.List;
import com.mycompany.productinspired.entities.User;
import com.mycompany.productinspired.services.IPurchaseService;
import com.mycompany.productinspired.services.IUserService;
import javax.validation.Valid;
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
@RequestMapping("/users")
public class UserController {

    @Autowired
    IUserService userService;
    
    @Autowired
    IPurchaseService purchaseService;
    
    private String listurl = "list";
    private String editurl = "edit";
    private String deleteurl = "delete";
    private String updateurl = "update";
    private String newurl = "new";


    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view) {
        List<User> users = userService.findAllUsers();
        view.addAttribute("users", users);
        view.addAttribute("editurl", editurl);
        view.addAttribute("deleteurl", deleteurl);
        view.addAttribute("newurl", newurl);
        return ("userList");
    }

    @RequestMapping(value = {"/49"}, method = RequestMethod.GET)
    public String purchasesByUserId(ModelMap model) {
//            String username = appService.getPrincipal();
//            User user = userService.findById(49);
            List<Purchase> purchases = purchaseService.getPurchasesForUserById(49);
            model.addAttribute("purchases",purchases);
//            model.addAttribute("loggedinuser", appService.getPrincipal());
//            model.addAttribute("pagetitle", "My purchase");
        return "purchaseList";
    }
         @RequestMapping("/new")
    public String newUser(ModelMap view) {
        User user=new User();
        view.addAttribute("user", user);
        view.addAttribute("listurl", listurl);
        return("newuser");
    } 
    
     @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String saveTrainer(@ModelAttribute("user") @Validated User user, BindingResult bindingResult,ModelMap view) {
        if (bindingResult.hasErrors()) {
            return "newuser";
        }
        
        if(userService.save(user)) {
                   
         

		view.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
                return ("userList");
        }
        else {
            
            view.addAttribute("message", new String("Something went wrong! Please try again! "));
        }
            view.addAttribute("listurl", listurl);
        return("newuser");
    }
    
      @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteUser(ModelMap view, @PathVariable int id) {
        if(userService.delete(id)) {
            view.addAttribute("msg", new String("User is deleted Successfully!"));
        } else {
            view.addAttribute("msg", new String("User has not been Deleted!"));
        }
        return("redirect:/users/list");
    }
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editUser(ModelMap view, @PathVariable int id) {
        User user = userService.findById(id);
        view.addAttribute("user", user);
        view.addAttribute("updateurl", updateurl);
        return("edituser");
    }
    @RequestMapping(value ="/edit/{id}" , method = RequestMethod.POST)
    public String updateTrainer(@Valid User user, BindingResult result, ModelMap view,  @PathVariable int id) {
        
       
            if (result.hasErrors()) {
                   user.setId(id);
                   
        return ("edituser");
			
            }
               userService.update(user);
       
		view.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
		return ("redirect:/users/list");
//        view.addAttribute("msg", new String(""));
//        return("redirect:/list");
    }
}
