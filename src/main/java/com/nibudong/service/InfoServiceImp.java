/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nibudong.mapper.InfoMapper;
import com.nibudong.pojo.Info;

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
public class InfoServiceImp implements InfoService{

	@Autowired
	private InfoMapper infoMapper;
	
	public int addInfo(Info info) {
		return infoMapper.addInfo(info);
	}

	public List<Info> getAllInfo() {
		return infoMapper.getAllInfo();
	}

	public List<Info> searchInfo(String key){
		key = "%"+key+"%";
		return infoMapper.searchInfo(key);
	}

	public List<Info> getOutInfos(){
		return infoMapper.getOutInfos();
	}

	public List<Info> getMyInfos(String id) {
		return infoMapper.getMyInfos(id);
	}

	public int outInfo(String []ids){
		int r = 0;
		for (String id : ids){
			r = infoMapper.outInfo(id);
		}
		return r;
	}

}
