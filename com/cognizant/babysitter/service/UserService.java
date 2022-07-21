// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.service;

import com.cognizant.babysitter.model.Login;
import com.cognizant.babysitter.model.Babysitters;
import java.util.List;
import com.cognizant.babysitter.model.User;

public interface UserService
{
    int save(final User p0);
    
    List<Babysitters> getBabysitters();
    
    User validateUser(final Login p0);
}
