package com.javen.service;

import com.javen.model.User;


public interface IUserService {
    public User getUserById(int userId);
    public User getUserByName(String username);
}