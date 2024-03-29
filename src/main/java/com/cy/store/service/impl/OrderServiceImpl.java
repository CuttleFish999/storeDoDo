package com.cy.store.service.impl;

import com.cy.store.entity.Address;
import com.cy.store.entity.Order;
import com.cy.store.entity.OrderItem;
import com.cy.store.mapper.OrderMapper;
import com.cy.store.service.IAddressService;
import com.cy.store.service.ICartService;
import com.cy.store.service.IOrderService;
import com.cy.store.service.ex.InsertException;
import com.cy.store.vo.CartVO;
import com.cy.store.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/* 訂單功能service層的實作 */
@Service //Service註解 : 將當前的類別交給Spring管理, 自動實體化跟維護
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private OrderMapper orderMapper;

    //收貨地址
    @Autowired
    private IAddressService addressService;

    //拿到總價
    @Autowired
    private ICartService cartService;

    @Override
    public Order create(Integer aid, Integer uid, String username, Integer[] cids) {
        //先拿到購物車所有的東西
        List<CartVO> list = cartService.getVOByCid(uid, cids);
        //總價
        long totalPrice = 0L;
        for (CartVO c : list) {
            totalPrice += c.getRealPrice() * c.getNum();

        }
        //收貨地址
        Address address = addressService.getByAid(aid, uid);
        Order order = new Order();
        order.setUid(uid);
        //把address的收貨地址放到order裡面
        order.setRecvName(address.getName());
        order.setRecvPhone(address.getPhone());
        order.setRecvProvince(address.getProvinceCode());
        order.setRecvCity(address.getCityCode());
        order.setRecvArea(address.getAreaCode());
        order.setRecvAddress(address.getAddress());
        //狀態跟總價格跟訂單付款時間
        order.setStatus(0);
        order.setTotalPrice(totalPrice);
        order.setOrderTime(new Date());
        //創建人時間修改人時間
        order.setCreatedUser(username);
        order.setCreatedTime(new Date());
        order.setModifiedUser(username);
        order.setModifiedTime(new Date());

        //組裝完傳到order新增
        Integer rows = orderMapper.insertOrder(order);
        if (rows != 1) {
            throw new InsertException("新增資料異常");
        }

        //---------------------訂單明細----------------------//
        for (CartVO c : list) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOid(order.getOid());
            orderItem.setPid(c.getPid());
            orderItem.setTitle(c.getTitle());
            orderItem.setImage(c.getImage());
            orderItem.setPrice(c.getRealPrice());
            orderItem.setNum(c.getNum());
            orderItem.setCreatedUser(username);
            orderItem.setCreatedTime(new Date());
            orderItem.setModifiedUser(username);
            orderItem.setModifiedTime(new Date());

            rows = orderMapper.insertOrderItem(orderItem);
            if (rows != 1) {
                throw new InsertException("新增資料異常");
            }
        }
        return order;
    }
    //---------------------訂單明細----------------------//


    //---------------------訂單----------------------//

    @Override
    public List<OrderVO> queryOrderVoByOid(Integer oid) {

        List<OrderVO> orderVos = orderMapper.queryOrderVoByOid(oid);

        return orderVos;
    }



}

