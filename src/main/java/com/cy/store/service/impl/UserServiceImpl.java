package com.cy.store.service.impl;

import com.cy.store.entity.User;
import com.cy.store.mapper.UserMapper;
import com.cy.store.service.IUserService;
import com.cy.store.service.ex.InsertException;
import com.cy.store.service.ex.PasswordNotMatchException;
import com.cy.store.service.ex.UserNotFoundException;
import com.cy.store.service.ex.UsernameDuplicateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.UUID;

/* 會員功能業務邏輯層的實作 */
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
            throw new UsernameDuplicateException("已註冊過的會員名稱");
        }

        //密碼加密實作 : MD5方式
        //( 隨機字串(鹽) + 密碼 + 隨機字串(鹽) )----再交由MD5連續加載三次
        String oldPassword = user.getPassword();

        //得到鹽值(隨機生成)來加密
        String salt = UUID.randomUUID().toString().toUpperCase();

        //補全數據 ,鹽值記錄到SQL
        user.setSalt(salt);

        //再把密碼跟鹽值弄成一個整體進行加密, 忽略原有密碼提升數據的安全性
        String md5Password =  getMD5Password(oldPassword, salt);

        //將加密之後的密碼重新設定到user類別中
        user.setPassword(md5Password);

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

    @Override
    public User login(String username, String password) {

        //呼叫 mapper 層的 findByUsername 方法
        //在根據username查詢會員是否存在, 不再就丟異常
        User result = userMapper.findByUsername(username);

        if(result == null){
            throw new UserNotFoundException("會員不存在");
        }
        //檢查密碼是否對應
        //1.先拿到資料庫加密的密碼
        String oldPassword = result.getPassword();

        //2.在和User傳過來的密碼對比
        //2-1 先取得鹽值,上次註冊薪增到資料庫的鹽值
         String salt = result.getSalt();

        //2-2 將User傳的密碼按造一樣的md5算法進行加密
        String newMd5Password = getMD5Password(password, salt);
        //3.和密碼比對有沒有相同
        if(newMd5Password.equals(oldPassword)){
            throw new PasswordNotMatchException("密碼錯誤");
        }
        //判斷會員有沒有被停權 is_delete  1等於停權
        if(result.getIsDelete() == 1){
            throw new UserNotFoundException("會員不存在");
        }

        //這樣把一層到一層之間傳輸的數據變少了
        //例如登錄之後的頁面上方顯示只需要這些數據
        User user = new User();
        user.setUid(result.getUid());
        user.setUsername(result.getUsername());
        user.setAvatar(result.getAvatar());

        //在把資料回傳給user, 為了之後數據能帶到其他頁面使用
        return user;
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
