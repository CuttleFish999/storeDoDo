package com.cy.store.service.impl;

import com.cy.store.entity.Address;
import com.cy.store.mapper.AddressMapper;
import com.cy.store.service.IAddressService;
import com.cy.store.service.ex.AddressCountLimitException;
import com.cy.store.service.ex.InsertException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class AddressServiceImpl implements IAddressService {
    @Autowired
    private AddressMapper addressMapper;

    @Value("${user.address.max-count}")
    private int maxCount;

//------------------------------------------------------------------------//
    //新增收貨地址實作
    @Override
    public void addNewAddress(Integer uid, String username, Address address) {
        //找收貨地址計算筆數的方法
        Integer count = addressMapper.countByUid(uid);
        if (count >= maxCount) {
            throw new AddressCountLimitException("會員收貨地址超過上限");
        }
        //uid , isDefault
        address.setUid(uid);
        Integer isDefault = count == 0 ? 1 : 0; //1 表示預設 0 表示沒有預設
        address.setIsDefault(isDefault);
        //補齊baseEntity裡面的四個VO
        address.setCreatedUser(username);
        address.setModifiedUser(username);
        address.setCreatedTime(new Date());
        address.setModifiedTime(new Date());


        //新增方法
        Integer rows =  addressMapper.insert(address);
        if(rows != 1){
            throw new InsertException("新增用戶地址時出現未知的異常");
        }
    }


//------------------------------------------------------------------------//



}
