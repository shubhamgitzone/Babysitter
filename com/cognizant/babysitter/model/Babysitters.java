// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.model;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name = "babysitters")
public class Babysitters
{
    @Id
    private int id;
    private String name;
    private int age;
    private String phone;
    private double rating;
    private double charges;
    private String details;
    
    public int getId() {
        return this.id;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setName(final String name) {
        this.name = name;
    }
    
    public int getAge() {
        return this.age;
    }
    
    public void setAge(final int age) {
        this.age = age;
    }
    
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(final String phone) {
        this.phone = phone;
    }
    
    public double getRating() {
        return this.rating;
    }
    
    public void setRating(final double rating) {
        this.rating = rating;
    }
    
    public double getCharges() {
        return this.charges;
    }
    
    public void setCharges(final double charges) {
        this.charges = charges;
    }
    
    public String getDetails() {
        return this.details;
    }
    
    public void setDetails(final String details) {
        this.details = details;
    }
    
    @Override
    public String toString() {
        return "Sitter [id=" + this.id + ", name=" + this.name + ", age=" + this.age + ", phone=" + this.phone + ", rating=" + this.rating + ", charges=\" + charges + \" details=" + this.details + "]";
    }
}
