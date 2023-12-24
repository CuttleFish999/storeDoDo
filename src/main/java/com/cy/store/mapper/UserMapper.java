package com.cy.store.mapper;

import com.cy.store.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/** 处理用户数据操作的持久层接口 */
public interface UserMapper {
    /**
     * 插入用户数据
     * @param user 用户数据
     * @return 受影响的行数
     */
    Integer insert(User user);




    User findByUid(Integer uid);

    /*
      根据uid更新用户资料
      @param user 封装了用户id和新个人资料的对象
     * @return 受影响的行数
     */

}