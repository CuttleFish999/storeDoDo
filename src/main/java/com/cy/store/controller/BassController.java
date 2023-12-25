package com.cy.store.controller;


import com.cy.store.service.ex.InsertException;
import com.cy.store.service.ex.ServiceException;
import com.cy.store.service.ex.UsernameDuplicatedException;
import com.cy.store.util.JsonResult;
import org.springframework.web.bind.annotation.ExceptionHandler;

//控制層的父類, 用來統一做異常處理
public class BassController {
    //操作成功的狀態碼
    public static final int OK = 200;


    // 當專案有異常, 會被統一攔截到這個請求處理方法, 方法的回傳值會直接傳給前端
    // 自動將異常傳遞給這個方法的參數上
    @ExceptionHandler(ServiceException.class) //用來統一處理丟出的異常
    public JsonResult<Void> handleExpection(Throwable e) {
        JsonResult<Void> result = new JsonResult<>(e);
        if (e instanceof UsernameDuplicatedException) {
            result.setState(4000);
            result.setMessage("名稱已被使用");
        } else if (e instanceof InsertException) {
            result.setState(5000);
            result.setMessage("註冊時產生未知的異常");
        }

        return result;
    }

}
