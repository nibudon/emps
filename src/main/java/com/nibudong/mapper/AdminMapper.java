/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.mapper;

import com.nibudong.pojo.Admin;

/** 
 * ClassName: MovieMapper <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月14日 下午3:49:07 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public interface AdminMapper {

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
