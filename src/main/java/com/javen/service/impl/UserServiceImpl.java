package com.javen.service.impl;
import javax.annotation.Resource;

import com.javen.dao.UserMapper;
import org.springframework.stereotype.Service;
import com.javen.model.User;
import com.javen.service.IUserService;


@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
    private UserMapper userMapper;

    public User getUserById(int userId) {
        // TODO Auto-generated method stub
        return this.userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public User getUserByName(String username) {
        return this.userMapper.selectByName(username);
    }

}