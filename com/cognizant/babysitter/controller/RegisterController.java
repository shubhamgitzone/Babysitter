// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.controller;

import com.cognizant.babysitter.model.Babysitters;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.cognizant.babysitter.model.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import com.cognizant.babysitter.service.UserService;
import org.springframework.stereotype.Controller;

@Controller
public class RegisterController
{
    @Autowired
    private UserService service;
    
    public UserService getService() {
        return this.service;
    }
    
    public void setService(final UserService service) {
        this.service = service;
    }
    
    @RequestMapping({ "registrationPage" })
    public String showRegistrationPage() {
        return "register";
    }
    
    @RequestMapping(value = { "registerUser" }, method = { RequestMethod.POST })
    public String registerUser(@ModelAttribute("user") final User user, final ModelMap model) {
        final int result = this.service.save(user);
        model.addAttribute("result", (Object)("User created with Username" + result));
        return "login";
    }
    
    @RequestMapping({ "paymentPage" })
    public String showPaymentPage() {
        return "payment";
    }
    
    @RequestMapping(value = { "userPaid" }, method = { RequestMethod.POST })
    public String userPaid() {
        return "success";
    }
    
    @RequestMapping({ "aboutPage" })
    public String showAboutPage() {
        return "about";
    }
    
    @RequestMapping({ "contactPage" })
    public String showContactPage() {
        return "contact";
    }
    
    @RequestMapping({ "termsandconditionPage" })
    public String showTermsandconditionPage() {
        return "termsandcondition";
    }
    
    @RequestMapping({ "dashPage" })
    public String showDashboard(final ModelMap model) {
        final List<Babysitters> babysitters = this.service.getBabysitters();
        model.addAttribute("babysitters", (Object)babysitters);
        return "dashboard";
    }
}
