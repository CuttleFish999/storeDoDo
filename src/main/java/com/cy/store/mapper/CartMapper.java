package com.cy.store.mapper;

import com.cy.store.entity.Cart;

import java.util.Date;

public interface CartMapper {

    /**
     * 新增資料到購物車
     *
     * @param cart 購物車資料
     * @return  受影響筆數
     */
    Integer insert(Cart cart);

    /**
     * 更新購物車商品數量
     * @param cid 購物車id
     * @param num 更新商品數量
     * @param modifiedUser 修改人
     * @param modifiedTime 修改時間
     * @return 受影響筆數
     */
    Integer updateNumByCid(Integer cid,
                           Integer num,
                           String modifiedUser,
                           Date modifiedTime);

    /**
     * 根據會員id跟商品id查詢購物車裡面的東西
     * @param uid 會員id
     * @param pid 商品id
     */
    Cart fundByUidAndPid(Integer uid,Integer pid);

}
