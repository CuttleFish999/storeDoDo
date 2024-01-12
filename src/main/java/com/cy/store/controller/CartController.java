package com.cy.store.controller;


import com.cy.store.service.ICartService;
import com.cy.store.util.JsonResult;
import com.cy.store.vo.CartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping("carts")
public class CartController extends BassController {

    @Autowired
    private ICartService cartService;

    @RequestMapping("add_to_cart")
    public JsonResult<Void> addToCart(Integer pid, Integer amount, HttpSession session) {

        Integer uid = getuidFromSession(session);
        String username = getUsernameFromSession(session);
        cartService.addToCart(uid, pid, amount, username);

        return new JsonResult<>(OK);
    }

    @RequestMapping({"", "/"})
    public JsonResult<List<CartVO>> getVOByUid(HttpSession session) {
        //從session取uid出來
        Integer uid = getuidFromSession(session);
        //再把找出來的uid給service去找資料
        List<CartVO> data = cartService.getVOByUid(uid);

        return new JsonResult<List<CartVO>>(OK, data);

    }

    @RequestMapping("{cid}/num/add")
    public JsonResult<Integer> addNum(@PathVariable("cid") Integer cid,
                                      HttpSession session) {

        //先從session拿到uid跟username
        Integer uid = getuidFromSession(session);
        String username = getUsernameFromSession(session);
        //再去傳給service執行方法增加數量
        Integer data = cartService.addNum(cid, uid, username);
        return new JsonResult<Integer>(OK, data);

    }

    @PostMapping("{cid}/num/reduce")
    public JsonResult<Integer> reduceNum(@PathVariable("cid") Integer cid,
                                      HttpSession session) {

        //先從session拿到uid跟username
        Integer uid = getuidFromSession(session);
        String username = getUsernameFromSession(session);
        //再去傳給service執行方法減少數量
        Integer data = cartService.reduceNum(cid, uid, username);
        return new JsonResult<Integer>(OK, data);

    }


}
