package com.accp.service;

import com.accp.dao.UsersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class UsersSrviceImpl implements UsersService{
    @Autowired
    private UsersMapper usersMapper;

    @Override
    public HashMap<String,Object>  login(String uname, String upass) {
        return usersMapper.login(uname,upass);
    }
}
