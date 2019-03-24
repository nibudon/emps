/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.mapper;

import java.util.List;

import com.nibudong.pojo.Admin;
import com.nibudong.pojo.Employee;

/** 
 * ClassName: UserInfoMapper <br/> 
 * Function: TODO 功能描述 <br/> 
 * date: 2018年6月14日 下午3:49:07 <br/> 
 * 
 * @author 倪卟懂 
 * @version 1.0
 * @since JDK 1.8 
 */
public interface EmployeeMapper {

	/** 
	 * register:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param employee
	 * @return 
	 * @since JDK 1.8 
	 */  
	int register(Employee employee);

	/** 
	 * getEmpByName:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param username
	 * @return 
	 * @since JDK 1.8 
	 */  
	Employee getEmpByName(String username);

	/** 
	 * getEmpById:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param id
	 * @return 
	 * @since JDK 1.8 
	 */  
	Employee getEmpById(String id);

	/** 
	 * updateEmp:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param e
	 * @return 
	 * @since JDK 1.8 
	 */  
	int updateEmp(Employee e);

	/** 
	 * getAllEmps:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @return 
	 * @since JDK 1.8 
	 */  
	List<Employee> getAllEmps();

	/** 
	 * deleteEmp:(这里用一句话描述这个方法的作用). <br/>
	 * 
	 * @author 倪卟懂 
	 * @param id
	 * @return 
	 * @since JDK 1.8 
	 */  
	int deleteEmp(String id);

}
