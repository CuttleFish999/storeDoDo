package com.cy.store.mapper;

import com.cy.store.entity.Order;
import com.cy.store.entity.OrderItem;

public interface OrderMapper {


    /**
     * 新增訂單
     * @param order 訂單類別的資料
     * @return 幾筆
     */
    Integer insertOrder(Order order);


    /**
     * 新增訂單明細
     * @param orderItem 訂單明細資料
     * @return 幾筆
     */
    Integer insertOrderItem(OrderItem orderItem);
}
