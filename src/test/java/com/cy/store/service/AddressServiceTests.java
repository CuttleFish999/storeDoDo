package com.cy.store.service;

import com.cy.store.entity.Address;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

// @RunWith(SpringRunner.class)表示啟動這個單元測試(正常單元測試是不能用的), 需要傳一個SpringRunner型別的參數
@RunWith(SpringRunner.class)
@SpringBootTest
public class AddressServiceTests {
    @Autowired
    private  IAddressService addressService;

    @Test
    public void addNewAddress(){
        Address address = new Address();
        address.setPhone("0912121212");
        address.setName("測試地址");

        addressService.addNewAddress(1,"地址新增測試",address);
    }

}

