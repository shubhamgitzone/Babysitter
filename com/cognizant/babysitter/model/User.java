// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.model;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name = "User")
public class User
{
    private String firstName;
    private String lastName;
    private String email;
    @Id
    private int phoneNumber;
    private String password;
    
    @Override
    public String toString() {
        return "User [firstName=" + this.firstName + ", lastName=" + this.lastName + ", email=" + this.email + ", phoneNumber=" + this.phoneNumber + ", password=" + this.password + "]";
    }
    
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(final String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(final String lastName) {
        this.lastName = lastName;
    }
    
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(final String email) {
        this.email = email;
    }
    
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
}
