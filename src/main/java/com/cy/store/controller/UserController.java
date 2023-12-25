package com.cy.store.controller;

import com.cy.store.entity.User;
import com.cy.store.service.IUserService;
import com.cy.store.service.ex.InsertException;
import com.cy.store.service.ex.UsernameDuplicatedException;
import com.cy.store.util.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController // 等於 @Component + @ResponseBody
@RequestMapping("users")
public class UserController extends BassController{

    @Autowired
    private IUserService userService;



    @RequestMapping("reg")
    //表示此方法的回傳結果以json格式進行回傳給前端
    public JsonResult<Void> reg(User user) {
            userService.reg(user);
        return new JsonResult<>(OK);
    }


    /* 每個Controller都要寫這個處理方法比較麻煩, 所以統一寫成一個類別當做父類別
    @RequestMapping("reg")
    //表示此方法的回傳結果以json格式進行回傳給前端
    public JsonResult<Void> reg(User user) {
        //創建回傳結果對象
        JsonResult<Void> result = new JsonResult<>();
        try {
            userService.reg(user);
            result.setState(200);
            result.setMessage("會員註冊成功");
        } catch (UsernameDuplicatedException e) {
            result.setState(4000);
            result.setMessage("名稱已被使用");
        } catch (InsertException e) {
            result.setState(5000);
            result.setMessage("註冊時產生未知的異常");
        }
        return result;
    }
    */

}
