/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.util;

import java.util.UUID;

/** 
 * ClassName: GetUUID <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2019年2月20日 下午11:47:22 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public class GetUUID {

	public static String getUUID() {
//		System.out.println(UUID.randomUUID().toString().replaceAll("-", ""));
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
}
