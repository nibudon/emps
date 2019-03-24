/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nibudong.pojo.Info;
import com.nibudong.service.InfoService;
import com.nibudong.util.DateFormate;
import com.nibudong.util.GetUUID;

import net.sf.json.JSONArray;

/** 
 * ClassName: UserInfoController <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月14日 下午3:57:09 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
@Controller
@RequestMapping("/info")
public class InfoController {
	
	@Autowired
	private InfoService infoService;
	
	public String addInfo(Info info) {
		String result = "";
		int r = infoService.addInfo(info);
		if(r > 0) {
			//添加成功
			result = "";
		}
		return result;
	}
	
	@RequestMapping(value="/getAllInfo.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String getAllInfo(HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		String result = "{\"message\":\"还没有数据!\"}";
		List<Info> infos = infoService.getAllInfo();
		if(null != infos && !infos.isEmpty()) {
			JSONArray json = JSONArray.fromObject(infos);
			result = json.toString();
//			StringBuilder sb = new StringBuilder();
//			sb.append("{");
//			for (int i = 0; i < infos.size(); i++) {
//				Info info = infos.get(i);
//				sb.append("[\"username\":\"");
//				sb.append(info.getEmployee().getRealname());
//				sb.append("\",\"subTime\":\"");
//				sb.append(info.getSubTime());
//				sb.append("\",\"content\":\"");
//				sb.append(info.getContent());
//				sb.append("\"]");
//				if(i != infos.size()-1) {
//					sb.append(",");
//				}
//			}
//			sb.append("}");
//			result = sb.toString();
		}
		return result;
	}
	
	@RequestMapping(value="/getMyInfos.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String getMyInfos(String id,HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		String result = "{\"message\":\"还没有数据!\"}";
		List<Info> infos = infoService.getMyInfos(id);
		if(null != infos && !infos.isEmpty()) {
			JSONArray json = JSONArray.fromObject(infos);
			result = json.toString();
		}
		return result;
	}
	
	
	@RequestMapping(value="/subInfo.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String subInfo(String eid,String content,HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		String result = "{\"success\":\"false\",\"message\":\"提交失败!\"}";
		Info i = new Info();
		i.setContent(content);
		i.setId(GetUUID.getUUID());
		i.setEmpId(eid);
		i.setSubTime(DateFormate.formate(new Date()));
		i.setIsOut("0");
		int r = infoService.addInfo(i);
		if(r > 0) {
			result = "{\"success\":\"true\",\"message\":\"提交成功!\"}";
		}
		return result;
	}

	@RequestMapping(value="/searchInfo.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String searchInfo(String key,HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		String result = "{\"message\":\"没有数据!\"}";
		List<Info> infos = infoService.searchInfo(key);
		if(null != infos && !infos.isEmpty()) {
			JSONArray json = JSONArray.fromObject(infos);
			result = json.toString();
		}
		return result;
	}

	@RequestMapping(value="/getOutInfos.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String getOutInfos(HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		String result = "{\"message\":\"没有数据!\"}";
		List<Info> infos = infoService.getOutInfos();
		if(null != infos && !infos.isEmpty()) {
			JSONArray json = JSONArray.fromObject(infos);
			result = json.toString();
		}
		return result;
	}

	@RequestMapping(value="/outInfo.html",produces = {"text/html;charset=utf-8"})
	@ResponseBody
	public String outInfo(String infoIds,HttpServletRequest request,HttpServletResponse response) {
		response.setCharacterEncoding("utf-8");
		String result = "{\"message\":\"取出失败!\"}";
		if(infoIds != null && !"".equals(infoIds)){
			String []ids;
			if(infoIds.indexOf(",")>=0){
				infoIds = infoIds.substring(0,infoIds.length()-1);
				ids = infoIds.split(",");
			}else{
				ids = new String[1];
				ids[0] = infoIds;
			}
			int r = infoService.outInfo(ids);
			if(r > 0){
				result = "{\"message\":\"取出成功!\"}";
			}
		}else{
			result = "{\"message\":\"取出成功!\"}";
		}
		return result;
	}
}
