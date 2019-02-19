package com.km.action;


import com.km.db.Dept;
import com.km.db.Role;
import com.km.db.User;
import com.km.db.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class GotoAdduser extends ActionSupport {
	 public UserDao userDao;
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
        List<Dept> depts = userDao.selectDept();
		List<Role> roles = userDao.selectRole();
		if(depts!=null){
			request.setAttribute("depts", depts);
		}
		if(roles!=null){
			request.setAttribute("roles", roles);
		}
		System.out.println(depts);
		System.out.println(roles);
		return SUCCESS;
	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
