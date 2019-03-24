/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.service;

import com.nibudong.pojo.Admin;

/** 
 * ClassName: MovieRecordService <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月15日 下午3:12:51 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public interface AdminService {

	/** 
	 * getAdminByUsername:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param username
	 * @return 
	 * @since JDK 1.8 
	 */  
	Admin getAdminByUsername(String username);
}
