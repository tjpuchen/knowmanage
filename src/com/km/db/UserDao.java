package com.km.db;

import java.util.List;

public interface UserDao {
    public User login(String uID, String uPassword);
    public int addUser(User user);
    public List<User> selectUser();
    public List<Dept> selectDept();
    public List<Role> selectRole();
}
