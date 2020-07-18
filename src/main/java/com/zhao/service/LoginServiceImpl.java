package com.zhao.service;

import com.zhao.dao.LoginDao;
import com.zhao.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @author Zheng
 * @version 1.0
 * @date 2020/7/16 17:31
 */
@Service(value="LoginService")
public class LoginServiceImpl implements LoginService{
    @Autowired
    private LoginDao loginDao;
    public void setLoginDao(LoginDao loginDao){this.loginDao=loginDao;}

    @Override
    public User selectUser(Map<String,String> map) {
        // TODO Auto-generated method stub
        return loginDao.selectUser(map);
    }
}
