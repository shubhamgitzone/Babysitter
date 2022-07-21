// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.service;

import com.cognizant.babysitter.model.Babysitters;
import java.util.List;
import com.cognizant.babysitter.model.Login;
import org.springframework.transaction.annotation.Transactional;
import com.cognizant.babysitter.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import com.cognizant.babysitter.dao.UserDAO;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService
{
    @Autowired
    private UserDAO dao;
    
    public UserDAO getDao() {
        return this.dao;
    }
    
    public void setDao(final UserDAO dao) {
        this.dao = dao;
    }
    
    @Transactional
    public int save(final User user) {
        return this.dao.create(user);
    }
    
    public User validateUser(final Login login) {
        return this.dao.validateUser(login);
    }
    
    public List<Babysitters> getBabysitters() {
        return this.dao.findBabysitters();
    }
}
