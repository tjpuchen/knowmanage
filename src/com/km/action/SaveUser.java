package com.km.action;


import com.km.db.Dept;
import com.km.db.Role;
import com.km.db.User;
import com.km.db.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class SaveUser extends ActionSupport {
	 public UserDao userDao;
	 public User user;
	public String execute() throws Exception {
//     System.out.println(user.getuName());
     return "a";
	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
