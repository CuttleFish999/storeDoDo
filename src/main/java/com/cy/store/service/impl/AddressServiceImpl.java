package com.cy.store.service.impl;

import com.cy.store.entity.Address;
import com.cy.store.mapper.AddressMapper;
import com.cy.store.service.IAddressService;
import com.cy.store.service.IDistrictService;
import com.cy.store.service.ex.AddressCountLimitException;
import com.cy.store.service.ex.InsertException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AddressServiceImpl implements IAddressService {
    @Autowired
    private AddressMapper addressMapper;

    //增加會員收貨地址 Service 層依賴 DistrictService 的介面
    @Autowired
    private IDistrictService districtService;


    @Value("20")
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

        //再這個方法中把從districtService介面得到的省市區資料傳遞到address物件裡面
        //所以address裡面包含的所有會員收貨地址的資料
        String provinceName =  districtService.getNameByCode(address.getProvinceCode());
        String cityName =  districtService.getNameByCode(address.getCityCode());
        String areaName =  districtService.getNameByCode(address.getAreaCode());
        address.setAddress(provinceName);
        address.setCityName(cityName);
        address.setAreaName(areaName);


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
//從uid找到地址

    @Override
    public List<Address> getByUid(Integer uid) {
        List<Address> list = addressMapper.findByUid(uid);
        //更改一下回傳不需要那麼多,可以提升效率,不打不影響程式運作
        for(Address address : list){
            address.setAid(null);
            address.setUid(null);
            address.setProvinceCode(null);
            address.setCityCode(null);
            address.setAreaCode(null);
            address.setTel(null);
            address.setIsDefault(null);
            address.setCreatedTime(null);
            address.setCreatedUser(null);
            address.setModifiedTime(null);
            address.setModifiedUser(null);

        }
        return list;
    }


//------------------------------------------------------------------------//



}