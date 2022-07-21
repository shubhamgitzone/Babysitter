// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.dao;

import com.cognizant.babysitter.model.Login;
import com.cognizant.babysitter.model.Babysitters;
import java.util.List;
import com.cognizant.babysitter.model.User;

public interface UserDAO
{
    int create(final User p0);
    
    List<Babysitters> findBabysitters();
    
    User validateUser(final Login p0);
}
