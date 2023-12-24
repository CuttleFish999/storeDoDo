package com.cy.store.service;

import com.cy.store.entity.User;

// 會員功能業務邏輯層介面

public interface IUserService {
/*
* 會員註冊方法
* @param user  會員的數據對象
* */
    void reg(User user);
}
