package com.km.db;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDaoImpl extends SqlMapClientDaoSupport implements UserDao {
    @Override
    public User login(String uID, String uPassword) {
        Map map=new HashMap();
        map.put("uID",uID);
        map.put("uPassword",uPassword);
        return (User)getSqlMapClientTemplate().queryForObject("getByNameAndPwd",map);
    }

    @Override
    public int addUser(User user) {

        return (int)getSqlMapClientTemplate().insert("addUser",user);
    }

    @Override
    public List<User> selectUser() {
        List<User> userList=(List<User>) getSqlMapClientTemplate().queryForList("selectAllUser");
        return userList;
    }

    @Override
    public List<Dept> selectDept() {
        List<Dept> depts= (List<Dept>)getSqlMapClientTemplate().queryForList("selectDept");
        return depts;
    }

    @Override
    public List<Role> selectRole() {
        List<Role> roles= (List<Role>)getSqlMapClientTemplate().queryForList("selectRole");
        return  roles;
    }
}
