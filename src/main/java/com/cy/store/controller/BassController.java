package com.cy.store.controller;


import com.cy.store.service.ex.*;
import com.cy.store.util.JsonResult;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpSession;

//控制層的父類, 用來統一做異常處理
public class BassController {

    //----------------------處理統一的異常-----------------------//
    //操作成功的狀態碼
    public static final int OK = 200;


    // 當專案有異常, 會被統一攔截到這個請求處理方法, 方法的回傳值會直接傳給前端
    // 自動將異常傳遞給這個方法的參數上
    @ExceptionHandler(ServiceException.class) //用來統一處理丟出的異常
    public JsonResult<Void> handleExpection(Throwable e) {
        JsonResult<Void> result = new JsonResult<>(e);
        if (e instanceof UsernameDuplicateException) {
            result.setState(4000);
            result.setMessage("名稱已被使用");
        } else if (e instanceof UserNotFoundException) {
            result.setState(5001);
            result.setMessage("會員不存在的");
        } else if (e instanceof PasswordNotMatchException) {
            result.setState(5002);
            result.setMessage("密碼錯誤");
        } else if (e instanceof InsertException) {
            result.setState(5000);
            result.setMessage("註冊時產生未知的異常");
        }

        return result;
    }


    //---------------------設定session-------------------------//

    /**
     * 拿到session裡面的uid
     *
     * @param session session變數
     * @return 當前登錄的會員uid的值
     */
    public final Integer getuidFromSession(HttpSession session) {
        return Integer.valueOf(session.getAttribute("uid")
                .toString());
    }

    /**
     * 拿到當前登錄會員的username
     * @param session  session變數
     * @return 當前登錄會員的username
     */
    public final String getUsernameFromSession(HttpSession session) {
       return session.getAttribute("username").toString();
    }


}
