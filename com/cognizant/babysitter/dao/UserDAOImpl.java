// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.dao;

import com.cognizant.babysitter.model.Babysitters;
import java.util.List;
import org.springframework.jdbc.core.RowMapper;
import com.cognizant.babysitter.mapper.UserMapper;
import com.cognizant.babysitter.model.Login;
import com.cognizant.babysitter.model.User;
import org.springframework.jdbc.core.JdbcTemplate;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO
{
    @Autowired
    private HibernateTemplate hibernateTemplate;
    @Autowired
    DataSource datasource;
    @Autowired
    JdbcTemplate jdbcTemplate;
    
    public HibernateTemplate getHibernateTemplate() {
        return this.hibernateTemplate;
    }
    
    public void setHibernateTemplate(final HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    
    public int create(final User user) {
        final Integer result = (Integer)this.hibernateTemplate.save((Object)user);
        return result;
    }
    
    public User validateUser(final Login login) {
        final String sql = "select * from User where phoneNumber='" + login.getPhoneNumber() + "' and password='" + login.getPassword() + "'";
        final List<User> users = (List<User>)this.jdbcTemplate.query(sql, (RowMapper)new UserMapper());
        return (users.size() > 0) ? users.get(0) : null;
    }
    
    public List<Babysitters> findBabysitters() {
        return (List<Babysitters>)this.hibernateTemplate.loadAll((Class)Babysitters.class);
    }
}
