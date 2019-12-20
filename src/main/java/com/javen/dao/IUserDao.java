package com.javen.dao;

import com.javen.model.User;

public interface IUserDao {
    public User selectByPrimaryKey(int userId);
}
