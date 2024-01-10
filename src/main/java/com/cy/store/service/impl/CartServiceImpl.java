package com.cy.store.service.impl;

import com.cy.store.entity.Cart;
import com.cy.store.entity.Product;
import com.cy.store.mapper.CartMapper;
import com.cy.store.mapper.ProductMapper;
import com.cy.store.service.ICartService;
import com.cy.store.service.ex.InsertException;
import com.cy.store.service.ex.UpdateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class CartServiceImpl implements ICartService {

    //購物車的service層依賴
    //購物車的mapper和商品的mapper
    //把加入購物車當作加入商品,商品id交給商品mapper層去查詢

    @Autowired
    private CartMapper cartMapper;
    @Autowired
    private ProductMapper productMapper;

    @Override
    public void addToCart(Integer uid, Integer pid, Integer amount, String username) {

        Date date = new Date();

        //先依靠uid,pid查目前要加入的購物車在表格裡面有沒有
        Cart result = cartMapper.fundByUidAndPid(uid, pid);

        if (result == null) { //null表示商品不再購物車中,所以要新增

            Cart cart = new Cart();//new 一個新的購物車,所以要把需要的靠傳進來的參數塞進去

            cart.setUid(uid);
            cart.setPid(pid);
            cart.setNum(amount);
            //價格要呼叫商品傳過來,商品要先用傳進來的參數pid去取得價格
            Product product = productMapper.findById(pid);
            cart.setPrice(product.getPrice());
            cart.setCreatedUser(username);
            cart.setCreatedTime(date);
            cart.setModifiedUser(username);
            cart.setModifiedTime(date);

            Integer rows = cartMapper.insert(cart);
            if (rows != 1) {
                throw new InsertException("加入購物車時發生異常");

            }
        } else { //表示購物車表格有這個商品,所以更新他的數量num
            Integer num = result.getNum() + amount;
            //這邊沒有cid要靠上面的result裡面拿
            Integer rows =  cartMapper.updateNumByCid(result.getCid(), num, username, date);

            if(rows != 1){
                throw new UpdateException("更新購物車時發生異常");
            }

        }
    }
}