package com.cy.store.service.impl;

import com.cy.store.entity.User;
import com.cy.store.mapper.UserMapper;
import com.cy.store.service.IUserService;
import com.cy.store.service.ex.InsertException;
import com.cy.store.service.ex.UsernameDuplicatedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.UUID;

/* 會員功能業務層的實作 */
@Service //Service註解 : 將當前的類別交給Spring管理, 自動實體化跟維護
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void reg(User user) {
        //通過user參數拿到傳過來的username
        String username = user.getUsername();
        // 使用findByUsername(username) 判斷會員有沒有被註冊過
        User result = userMapper.findByUsername(username);
        // 判斷回傳結果是否為null, 不為null就丟出會員名稱已被使用的異常
        if (result != null) {
            //丟出異常
            throw new UsernameDuplicatedException("已註冊過的會員名稱");
        }

        //密碼加密實作 : MD5方式
        //( 隨機字串(鹽) + 密碼 + 隨機字串(鹽) )----再交由MD5連續加載三次
        String oldPassword = user.getPassword();
        //得到鹽值(隨機生成)來加密
        String salt = UUID.randomUUID().toString().toUpperCase();
        //再把密碼跟鹽值弄成一個整體進行加密


        // 補齊數據 is_delete 設定成0
        user.setIsDelete(0);
        // 補齊數據 4個紀錄的屬性
        user.setCreatedUser(user.getUsername());
        user.setModifiedUser(user.getUsername());
        Date date = new Date();
        user.setCreatedTime(date);
        user.setModifiedTime(date);

        //執行註冊業務功能的實作 (rows == 1)
        Integer rows = userMapper.insert(user);
        if (rows != 1) {
            throw new InsertException("在註冊會員時產生未知的錯誤");
        }


    }

    /**
     * md5加密方法
     **/
    private String getMD5Password(String password, String salt) {
        for (int i = 0; i < 3; i++) {
            //md5加密算法方法在轉成大寫, 然後連續加密三次
            password = DigestUtils.md5DigestAsHex((salt + password + salt).getBytes()).toUpperCase();

        }
        //回傳加密之後的密碼
        return password;

    }

}
