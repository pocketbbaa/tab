package com.tab.service;

import com.tab.model.Manager;

import java.util.List;

/**
 * Created by Administrator on 2017/2/27 0027.
 */
public interface ManagerService {


    /**
     * 管理员登陆
     *
     * @param username
     * @param password
     * @return
     */
    Integer login(String username, String password);

    /**
     * 根据ID获取管理员对象
     * @param id
     * @return
     */
    Manager getByID(int id);

    /**
     * 添加管理员
     *
     * @param manager
     * @return
     */
    boolean add(Manager manager);

    /**
     * 根据ID删除管理员
     *
     * @param ID
     * @return
     */
    boolean deleteByID(int ID);

    /**
     * 查询管理员列表
     *
     * @return
     */
    List<Manager> getList();

    /**
     * 查询用户名是否存在
     *
     * @param username
     * @return
     */
    boolean userExist(String username);

}
