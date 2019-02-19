package com.km.action;




import com.km.db.User;
import com.km.db.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class GotoUserManager extends ActionSupport {
	public UserDao userDao;
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		List<User> userList = userDao.selectUser();
		if(userList!=null){
			request.setAttribute("userList", userList);
		}
		System.out.println(userList);
		System.out.println("112");
		for (User user:userList) {
			System.out.println("112");
			System.out.println(user.getuName());
		}
		return SUCCESS;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
