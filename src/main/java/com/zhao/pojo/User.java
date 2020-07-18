package com.zhao.pojo;

import java.io.Serializable;

/**
 * @author Zheng
 * @version 1.0
 * @date 2020/7/16 17:29
 */
public class User implements Serializable {
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    String username;
    String password;
}
