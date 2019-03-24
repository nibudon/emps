/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nibudong.mapper.EmployeeMapper;
import com.nibudong.pojo.Employee;
import com.nibudong.util.DateFormate;
import com.nibudong.util.GetUUID;

/** 
 * ClassName: UserInfoServiceImp <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月14日 下午3:55:57 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
@Service
public class EmployeeServiceImp implements EmployeeService{

	@Autowired
	private EmployeeMapper employeeMapper;
	
	public int register(Employee employee) {
		employee.setRegisterDate(DateFormate.formate(new Date()));
		employee.setId(GetUUID.getUUID());
		return employeeMapper.register(employee);
	}

	public Employee getEmpByName(String username) {
		return employeeMapper.getEmpByName(username);
	}

	public Employee getEmpById(String id) {
		return employeeMapper.getEmpById(id);
	}

	public int updateEmp(Employee e) {
		return employeeMapper.updateEmp(e);
	}

	public List<Employee> getAllEmps() {
		return employeeMapper.getAllEmps();
	}

	public int deleteEmp(String id) {
		return employeeMapper.deleteEmp(id);
	}

}
