package com.cy.store.mapper;


import com.cy.store.entity.Address;


//收貨地址永續層介面
public interface AddressMapper {
    /**
     * 新增會員收貨地址
     * @param address 收貨地址
     * @return 影響的筆數
     */
    Integer insert(Address address);


    /**
     * 根據會員id統計地址數量
     * @param uid 會員id
     * @return  目前會員的收貨地址總數
     */
    Integer countByUid(Integer uid);








}
