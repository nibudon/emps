/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nibudong.pojo.Admin;
import com.nibudong.service.AdminService;
import com.nibudong.service.AdminServiceImp;
import com.nibudong.util.Constants;
import com.nibudong.util.MyMd5;

/** 
 * ClassName: AdminController <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2019年2月20日 下午8:57:50 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminServiceImp;
	
	@RequestMapping("/login.html")
	public String login(Admin admin,HttpServletRequest request) {
		String result = "redirect:/adminLogin.jsp";
		if(admin != null && !"".equals(admin.getUsername()) && !"".equals(admin.getPass())) {
			admin.setPass(MyMd5.getMd5(admin.getPass()));
			Admin a = adminServiceImp.getAdminByUsername(admin.getUsername());
			if(a != null) {
				if(admin.getPass().equals(a.getPass())) {
					//登陆成功
					request.getSession().setAttribute(Constants.CURRENTADMIN, a);
					result = "redirect:/adminIndex.jsp";
				}
			}
		}
		return result;
	}
	
	@RequestMapping("/exit.html")
	public String exit(String id,HttpServletRequest request) {
		String result = "redirect:/adminLogin.jsp";
		request.getSession().removeAttribute(Constants.CURRENTADMIN);
		return result;
	}

}
