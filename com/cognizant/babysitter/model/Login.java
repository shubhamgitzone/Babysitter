// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.model;

public class Login
{
    private int phoneNumber;
    private String password;
    
    public int getPhoneNumber() {
        return this.phoneNumber;
    }
    
    public void setPhoneNumber(final int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(final String password) {
        this.password = password;
    }
    
    @Override
    public String toString() {
        return "Login [phoneNumber=" + this.phoneNumber + ", password=" + this.password + "]";
    }
}
