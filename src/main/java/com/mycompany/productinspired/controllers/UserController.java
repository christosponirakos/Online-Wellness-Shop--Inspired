package com.mycompany.productinspired.controllers;

import java.util.List;
import com.mycompany.productinspired.entities.User;
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

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listAllTrainers(ModelMap view) {
        List<User> users = userService.findAllUsers();
        view.addAttribute("users", users);
        return ("userList");
    }

}
