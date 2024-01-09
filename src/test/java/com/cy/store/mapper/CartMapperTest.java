package com.cy.store.mapper;

import com.cy.store.entity.Cart;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

// @RunWith(SpringRunner.class)注解是一个測試啟動器，
// 可以載入Springboot測試的註解
@RunWith(SpringRunner.class)
@SpringBootTest
public class CartMapperTest {

    @Autowired
    private CartMapper cartMapper;


    @Test
    public void insert() {
        Cart cart = new Cart();
        cart.setUid(2);
        cart.setPid(10000001);
        cart.setNum(1);
        cart.setPrice(1000L);
        cartMapper.insert(cart);
    }

    @Test
    public void updateNumByCid() {
        cartMapper.updateNumByCid(1, 4, "測試購物車", new Date());
    }

    @Test
    public void fundByUidAndPid() {
        Cart cart = cartMapper.fundByUidAndPid(2, 10000001);
        System.out.println(cart);
    }

}

