package com.km.action;

import javax.servlet.http.HttpSession;

import com.km.db.UserDao;
import org.apache.struts2.dispatcher.SessionMap;

import com.km.db.admin.AdminDao;
//import com.km.db.admin.User;
import com.km.db.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	
//	private String username;
//	private String userpwd;
//	public AdminDao adminDao;


	public UserDao userDao;
	private String uID;
	private String uPassword;
	@Override
	public String execute() throws Exception {
		ActionContext ctx=ActionContext.getContext();
		SessionMap session=(SessionMap)ctx.getSession();
		System.out.println(uID+"--"+uPassword);
//		User user=(User)adminDao.getAdmin(username, userpwd);
		User user=(User)userDao.login(uID, uPassword);
		System.out.println(user.getuName());
		if(user!=null){
			session.put("user", user);
			return SUCCESS;
		}
		
		else return ERROR;
	}
//	public String getUsername() {
//		return username;
//	}
//	public void setUsername(String username) {
//		this.username = username;
//	}
//	public String getUserpwd() {
//		return userpwd;
//	}
//	public void setUserpwd(String userpwd) {
//		this.userpwd = userpwd;
//	}
//	public void setAdminDao(AdminDao adminDao) {
//		this.adminDao = adminDao;
//	}
//	public AdminDao getAdminDao() {
//		return adminDao;
//	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public String getuID() {
		return uID;
	}

	public void setuID(String uID) {
		this.uID = uID;
	}

	public String getuPassword() {
		return uPassword;
	}

	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
}
