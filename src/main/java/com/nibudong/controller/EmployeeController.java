/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nibudong.pojo.Employee;
import com.nibudong.service.EmployeeService;
import com.nibudong.util.Constants;
import com.nibudong.util.MyMd5;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * ClassName: MovieController <br/>
 * Function: TODO 功能描述 <br/>
 * date: 2018年6月15日 上午9:14:25 <br/>
 *
 * @author 倪卟懂
 * @version 1.0
 * @since JDK 1.8
 */
@RequestMapping("/employee")
@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/login.html")
	public String login(Employee employee,HttpServletRequest request) {
		String result = "redirect:/login.jsp";
		request.getSession().setAttribute("message","登录失败,请重试!");
		if(employee != null && !"".equals(employee.getUsername()) && !"".equals(employee.getPass())) {
			employee.setPass(MyMd5.getMd5(employee.getPass()));
			Employee e = employeeService.getEmpByName(employee.getUsername());
			if(e != null) {
				request.getSession().setAttribute("message","密码错误,请重新输入!");
				if(employee.getPass().equals(e.getPass())){
					//登录成功
					request.getSession().setAttribute(Constants.CURRENTUSER, e);
					result = "redirect:/index.jsp";
				}
			}else{
				request.getSession().setAttribute("message","用户名不存在!");
			}
		}
		return result;
	}

	@RequestMapping("/register.html")
	public String register(Employee employee) {
		String result = "redirect:/register.jsp";
		employee.setPass(MyMd5.getMd5(employee.getPass()));
		int r = employeeService.register(employee);
		if(r > 0) {
			//注册成功
			result = "redirect:/login.jsp";
		}
		return result;
	}

	@RequestMapping(value="/addEmp.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String addEmp(Employee employee) {
		String result = "{\"success\":\"false\",\"message\":\"添加失败\"}";
		employee.setPass(MyMd5.getMd5(employee.getPass()));
		int r = employeeService.register(employee);
		if(r > 0) {
			//注册成功
			result = "{\"success\":\"true\",\"message\":\"添加成功\"}";
		}
		return result;
	}

	@RequestMapping(value="/checkUsername.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String checkUsername(String username) {
		String result = "{\"message\":\"用户名可用!\"}";
		Employee employee = employeeService.getEmpByName(username);
		if(employee != null) {
			//用户名不存在
			result = "{\"message\":\"用户名不可用!\"}";
		}
		return result;
	}

	@RequestMapping(value="/exit.html",produces = {"text/html;charset=utf-8"})
	public String exit(String id,HttpServletRequest request) {
		String result = "redirect:/login.jsp";
		request.getSession().removeAttribute(Constants.CURRENTUSER);
		return result;
	}


	@RequestMapping(value="/editEmp.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String edit(String id,HttpServletRequest request) {
		String result = "";
		Employee e = employeeService.getEmpById(id);
		if(e != null) {
			JSONObject json = JSONObject.fromObject(e);
			result = json.toString();
		}
		return result;
	}

	@RequestMapping(value="/updateEmp.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String updateEmp(Employee e,HttpServletRequest request) {
		String result = "{\"message\":\"修改失败!\"}";
		int r = employeeService.updateEmp(e);
		if(r > 0) {
			result = "{\"message\":\"修改成功!\"}";
		}
		return result;
	}

	@RequestMapping(value="/getAllEmps.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String getAllEmps(HttpServletRequest request) {
		String result = "{\"hasData\":\"false\"}";
		List<Employee> list = employeeService.getAllEmps();
		if(list != null && !list.isEmpty()) {
			JSONArray json = JSONArray.fromObject(list);
			result = json.toString();
		}
		return result;
	}

	@RequestMapping(value="/deleteEmp.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String deleteEmp(String id,HttpServletRequest request) {
		String result = "{\"success\":\"false\"}";
		int r = employeeService.deleteEmp(id);
		if(r > 0) {
			result = "{\"success\":\"true\"}";
		}
		return result;
	}

}
