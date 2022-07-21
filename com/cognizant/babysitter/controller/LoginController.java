// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.controller;

import org.springframework.web.bind.annotation.RequestMethod;
import com.cognizant.babysitter.model.Babysitters;
import java.util.List;
import com.cognizant.babysitter.model.User;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.cognizant.babysitter.model.Login;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import com.cognizant.babysitter.service.UserService;
import org.springframework.stereotype.Controller;

@Controller
public class LoginController
{
    @Autowired
    private UserService service;
    
    public UserService getService() {
        return this.service;
    }
    
    public void setService(final UserService service) {
        this.service = service;
    }
    
    @RequestMapping({ "loginPage" })
    public String showLoginPage() {
        return "login";
    }
    
    @RequestMapping(value = { "loginUser" }, method = { RequestMethod.POST })
    public String loginUser(@ModelAttribute("login") final Login login, final ModelMap model) {
        final User user = this.service.validateUser(login);
        if (user == null) {
            return "login";
        }
        final List<Babysitters> babysitters = this.service.getBabysitters();
        model.addAttribute("babysitters", (Object)babysitters);
        return "dashboard";
    }
}
