package com.cy.store.service;

public interface ICartService {

    /**
     * 把商品加到購物車
     *
     * @param uid      會員id
     * @param pid      商品id
     * @param amount   新增的數量幾筆
     * @param username 修改的會員名稱
     */
    void addToCart(Integer uid,
                   Integer pid,
                   Integer amount,
                   String username);


}
