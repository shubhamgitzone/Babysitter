// 
// Decompiled by Procyon v0.5.36
// 

package com.cognizant.babysitter.mapper;

import java.sql.SQLException;
import java.sql.ResultSet;
import com.cognizant.babysitter.model.User;
import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User>
{
    public User mapRow(final ResultSet rs, final int arg) throws SQLException {
        final User user = new User();
        final Integer phoneNumber = Integer.parseInt(rs.getString("phoneNumber"));
        user.setPhoneNumber(phoneNumber);
        user.setPassword(rs.getString("password"));
        user.setFirstName(rs.getString("firstName"));
        user.setLastName(rs.getString("lastName"));
        user.setEmail(rs.getString("email"));
        return user;
    }
}
