/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/** 
 * ClassName: DateFormate <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2019年2月20日 下午11:35:31 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public class DateFormate {

	public static String formate(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}
	
}
