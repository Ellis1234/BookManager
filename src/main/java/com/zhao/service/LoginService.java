package com.zhao.service;

import com.zhao.pojo.User;

import java.util.Map;

/**
 * @author Zheng
 * @version 1.0
 * @date 2020/7/16 17:31
 */
public interface LoginService {
    User selectUser(Map<String,String> map);
}
