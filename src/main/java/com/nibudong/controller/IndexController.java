/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
 * ClassName: IndexController <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2019年2月21日 下午1:53:50 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
@Controller
@RequestMapping("/")
public class IndexController {
	
	@RequestMapping("/")
	public String toStart() {
		return "redirect:/start.jsp";
	}

}
