/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.pojo;

/** 
 * ClassName: Info <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2019年2月20日 下午8:53:36 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public class Info {

	private String id;
	private String empId;
	private String title;
	private String subTime;
	private String content;
	private Employee employee;
	private String isOut;

	public String getIsOut() {
		return isOut;
	}

	public void setIsOut(String isOut) {
		this.isOut = isOut;
	}

	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSubTime() {
		return subTime;
	}
	public void setSubTime(String subTime) {
		this.subTime = subTime;
	}
	
	
}
