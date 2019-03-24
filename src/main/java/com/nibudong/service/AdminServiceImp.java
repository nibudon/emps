/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nibudong.mapper.AdminMapper;
import com.nibudong.mapper.EmployeeMapper;
import com.nibudong.pojo.Admin;

/** 
 * ClassName: MovieRecordServiceIml <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月15日 下午3:13:29 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
@Service
public class AdminServiceImp implements AdminService{
	@Autowired
	private AdminMapper adminMapper;

	public Admin getAdminByUsername(String username) {
		return adminMapper.getAdminByUsername(username);
	}

}
