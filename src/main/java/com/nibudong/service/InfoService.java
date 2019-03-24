/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.service;

import java.util.List;

import com.nibudong.pojo.Info;

/** 
 * ClassName: UserInfoService <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月14日 下午3:55:14 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public interface InfoService {

	/** 
	 * addInfo:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param info
	 * @return 
	 * @since JDK 1.8 
	 */  
	int addInfo(Info info);

	/** 
	 * getAllInfo:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @return 
	 * @since JDK 1.8 
	 */  
	List<Info> getAllInfo();

	/**
	 * searchInfo:(这里用一句话描述这个方法的作用). <br/>
	 *
	 * @author 倪卟懂
	 * @return
	 * @since JDK 1.8
	 */
	List<Info> searchInfo(String key);

	List<Info> getOutInfos();

	/** 
	 * getMyInfos:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param id
	 * @return 
	 * @since JDK 1.8 
	 */  
	List<Info> getMyInfos(String id);

	int outInfo(String []ids);
}
