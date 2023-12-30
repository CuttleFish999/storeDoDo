package com.cy.store.mapper;

import com.cy.store.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * 處理會員資料連接的持久層介面
 */

public interface UserMapper {
//----------------------------------------------//

    /**
     * 插入使用者數據
     *
     * @param user 會員
     * @return 產生多少筆資料
     */
    Integer insert(User user);

//----------------------------------------------//

    /**
     * 根據會員名稱查詢會員資料
     *
     * @param username 會員名稱
     * @return 產生多少筆資料
     */
    User findByUsername(String username);


    //----------------------------------------------//

    /**
     * 根據用戶uid來修改密碼
     *
     * @param uid          會員id
     * @param password     會員輸入的新密碼
     * @param modifiedUser 修改人
     * @param modifiedTime 修改時間
     * @return 被更改的資料筆數
     */
    Integer updatePasswordByUid(Integer uid,
                                String password,
                                String modifiedUser,
                                Date modifiedTime);

//----------------------------------------------//


    /**
     * 根據會員id查詢會員資料
     *
     * @param uid 會員id
     * @return 有找到就回傳, 沒有就回傳null
     */
    User findByUid(Integer uid);

}