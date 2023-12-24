package com.cy.store.mapper;

import com.cy.store.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.Date;

/** 處理使用者資料連接的持久層介面 */

public interface UserMapper {
    /**
     * 插入會員數據
     * @param user 會員
     * @return 產生多少筆資料
     */
    Integer insert(User user);


    /**
     * 根據會員名稱查詢會員資料
     * @param username 會員名稱
     * @return 產生多少筆資料
     */
    User findByUsername(String username);



}