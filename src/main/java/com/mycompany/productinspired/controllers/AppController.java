package com.mycompany.productinspired.controllers;


import com.mycompany.productinspired.dao.IProductDao;
import com.mycompany.productinspired.entities.User;
import com.mycompany.productinspired.services.IUserService;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;


import java.util.ArrayList;
import org.springframework.validation.annotation.Validated;

@Controller
@RequestMapping("/")
public class AppController {
    
    @Autowired
    IUserService userService;
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String goHome(ModelMap model) {
       // model.addAttribute("loggedinuser", appService.getPrincipal());
        model.addAttribute("pagetitle", "Inspired");
        return "index";
    }

    @RequestMapping(value = {"/categories/"}, method = RequestMethod.GET)
    public String goCategories(ModelMap model) {
       // model.addAttribute("loggedinuser", appService.getPrincipal());
        model.addAttribute("pagetitle", "Inspired");
        return "categories";
    }

    @RequestMapping(value = {"/contact"}, method = RequestMethod.GET)
    public String goContact(ModelMap model) {
        //model.addAttribute("loggedinuser", appService.getPrincipal());
        model.addAttribute("pagetitle", "Contact");
        return "contact";
    }

    @RequestMapping(value = {"/about"}, method = RequestMethod.GET)
    public String goAbout(ModelMap model) {
       // model.addAttribute("loggedinuser", appService.getPrincipal());
        model.addAttribute("pagetitle", "About");
        return "about";
    }
    @RequestMapping(value = {"/member"}, method = RequestMethod.GET)
    public String goMember(ModelMap model) {
        //model.addAttribute("loggedinuser", appService.getPrincipal());
        model.addAttribute("pagetitle", "Members' section");
        return "member";
    }

//    /**
//     * This method will provide the medium to add a new user.
//     */
//    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
//    public String newUser(ModelMap model) {
//        User user = new User();
//        Customer customer = new Customer();
//        List<UserProfile> userProfileList = new ArrayList();
//        user.setCustomer(customer);
//        user.setuserProfileList(userProfileList);
//        model.addAttribute("user", user);
//        model.addAttribute("edit", false);
//        model.addAttribute("action", "newuser");
//        model.addAttribute("loggedinuser", appService.getPrincipal());
//        return "registration";
//    }
//
//    /**
//     * This method will be called on form submission, handling POST request for
//     * saving user in database. It also validates the user input
//     */
//    @RequestMapping(value = {"/newuser"}, method = RequestMethod.POST)
//    public String saveUser(@Valid User user, BindingResult result,
//            ModelMap model) {
//
//        if (result.hasErrors()) {
//            model.addAttribute("loggedinuser", appService.getPrincipal());
//            return "registration";
//        }
//
//        boolean notUnique = false;
//        if (!userService.isUserSSOUnique(user.getId(), user.getSsoId())) {
//            model.addAttribute("ssoIdNotUnique", "Username " + user.getSsoId()
//                    + " already exists. Please fill in a different username.");
//            notUnique = true;
//        }
//
//        if (!customerService.isEmailUnique(user.getCustomer().getCustomerId(), user.getCustomer().getEmail())) {
//            model.addAttribute("emailnotUnique", "Email " + user.getCustomer().getEmail()
//                    + " already exists. Please fill in a different email.");
//            notUnique = true;
//        }
//
//        if (notUnique) {
//            model.addAttribute("action", "newuser");
//            model.addAttribute("loggedinuser", appService.getPrincipal());
//            return "registration";
//        }
//
//        UserProfile userProfile = new UserProfile(new Integer(1), "USER");
//        List<UserProfile> userProfileList = new ArrayList();
//        userProfileList.add(userProfile);
//        user.setuserProfileList(userProfileList);
//        userService.saveUser(user);
//
//        model.addAttribute("success", "Dear " + user.getSsoId() + ", you have registered successfully.");
//        model.addAttribute("path", "4; URL=/Wellness/");
//        return "registrationsuccess";
//    }
//
//    /**
//     * This method will provide UserProfile list to views
//     */
//    @ModelAttribute("roles")
//    public List<UserProfile> initializeProfiles() {
//        return userProfileService.findAll();
//    }
//
//    /**
//     * This method handles Access-Denied redirect.
//     */
//    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
//    public String accessDeniedPage(ModelMap model) {
//        model.addAttribute("loggedinuser", appService.getPrincipal());
//        return "accessDenied";
//    }
//
//    /**
//     * This method handles login GET requests. If users is already logged-in and
//     * tries to goto login page again, will be redirected to list page.
//     */
//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public String loginPage(ModelMap model) {
//        if (isCurrentAuthenticationAnonymous()) {
//            model.addAttribute("pagetitle", "Login");
//            return "login";
//        } else {
//            return "redirect:/homepage";
//        }
//    }
//
//    /**
//     * This method handles logout requests. Toggle the handlers if you are
//     * RememberMe functionality is useless in your app.
//     */
//    @RequestMapping(value = "/logout", method = RequestMethod.GET)
//    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null) {
//            //new SecurityContextLogoutHandler().logout(request, response, auth);
//            persistentTokenBasedRememberMeServices.logout(request, response, auth);
//            SecurityContextHolder.getContext().setAuthentication(null);
//        }
//        return "redirect:/login?logout";
//    }
//
//    /**
//     * This method returns true if users is already authenticated [logged-in],
//     * else false.
//     */
//    private boolean isCurrentAuthenticationAnonymous() {
//        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        return authenticationTrustResolver.isAnonymous(authentication);
//    }
//

    
     @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public String goRestration(ModelMap model) {
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("pagetitle", "Inspired");
      
        return "registration";
    }


 @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
    public String saveRegistration(@ModelAttribute("user") @Validated User user, BindingResult bindingResult, ModelMap view) {

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        if (userService.save(user)) {

            view.addAttribute("success", "User " + user.getFirstName() + " " + user.getLastName() + " registered successfully");
            return ("redirect:/login");
        } else {

            view.addAttribute("message", new String("Something went wrong! Please try again! "));
        }
       
        return ("redirect:/login");
    }


  
    @RequestMapping(value={"/admin"}, method = RequestMethod.GET)
    public String goToAdminProfile(ModelMap view){ 
        
        view.addAttribute("pagetitle", "Inspired");
         return "admin";
    }

}







