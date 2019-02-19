package com.km.action;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.km.search.DocumentEntity;

import com.opensymphony.xwork2.ActionSupport;

public class GotoDetail extends ActionSupport {
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();

		int c =  Integer.parseInt(a);
		System.out.println(c);
		request.setAttribute("c",c);
//		request.setAttribute("eachdoc",this.documentEntity);
//		System.out.println("aaa"+this.documentEntity); 
//		request.setAttribute("eachdoc",this.documentEntity);
		
		return SUCCESS;
	}
	private String a;
	
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
//	private DocumentEntity documentEntity;
//	
//	public DocumentEntity getDocumentEntity() {
//		return documentEntity;
//	}
//	public void setDocumentEntity(DocumentEntity documentEntity) {
//		this.documentEntity = documentEntity;
//	}
}
