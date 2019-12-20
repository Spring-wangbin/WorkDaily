package com.javen.dao;

import com.javen.model.User;

public interface UserMapper {
    public User selectByPrimaryKey(int id);
}
