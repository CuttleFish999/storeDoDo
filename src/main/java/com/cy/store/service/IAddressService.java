package com.cy.store.service;


// 收貨地址功能業務邏輯層介面

import com.cy.store.entity.Address;

public interface IAddressService {
   void addNewAddress(Integer uid,String username ,Address address);

}
