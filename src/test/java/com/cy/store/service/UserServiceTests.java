package com.cy.store.service;

import com.cy.store.entity.User;
import com.cy.store.mapper.UserMapper;
import com.cy.store.service.ex.ServiceException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

// @RunWith(SpringRunner.class)表示啟動這個單元測試(正常單元測試是不能用的), 需要傳一個SpringRunner型別的參數
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTests {
    @Autowired
    private IUserService userService;

//----------------------------------------------------------------//

    @Test
    public void reg() {
        try {
             User user = new User();
            user.setUsername("test02");
            user.setPassword("123");
            userService.reg(user);
            System.out.println("OK");
        } catch (ServiceException e) {
            //得到異常對象的名稱
            System.out.println(e.getClass().getSimpleName());
            //得到異常的訊息
            System.out.println(e.getMessage());
        }
    }
//----------------------------------------------------------------//

    @Test
    public void login() {

        User user = userService.login("test01", "123456");
        System.out.println(user);
    }

//----------------------------------------------------------------//
    @Test
    public void changePassword() {
    userService.changePassword(9,"網站管理者","123456","321");

    }
//----------------------------------------------------------------//

    @Test
    public void getByUid() {
//        Integer uid = 7;
//        User user = userService.getByUid(uid);
//        System.out.println(user);
        System.out.println(userService.getByUid(7));
    }

    //----------------------------------------------//

    @Test
    public void changeInfo() {
        User user = new User();
        user.setPhone("09876543210");
        user.setEmail("changeInfoTest@gmail.com");
        user.setGender(0);
        userService.changeInfo(7,"管理者測試",user);
    }

//----------------------------------------------------------------//



}

