package com.cy.store.service;

import com.cy.store.entity.User;

// 會員功能業務邏輯層介面

public interface IUserService {
    /**
     *  會員註冊方法
     * @param user 會員的數據變數
     */
    void reg(User user);

    /**
     *  會員登錄功能
     * @param username 會員名稱
     * @param password 會員密碼
     * @return 當前收到的用戶資料 如果沒有就返回null
     */
   User login(String username,String password);


    void changePassword(Integer uid,
                         String username,
                         String oldPassword,
                         String newPassword);

}
