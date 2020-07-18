package com.zhao.dao;

/**
 * @author Zheng
 * @version 1.0
 * @date 2020/7/16 17:30
 */
import com.zhao.pojo.User;

import java.util.Map;

public interface LoginDao {
    /**
     * 登录(Map 放入登录号和密码)
     */
    User selectUser(Map<String,String> map);
}
