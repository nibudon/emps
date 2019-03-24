/*******************************************************************************
 * Copyright (c) 2010, 2030 www.itlaobing.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.nibudong.util;

import java.util.List;

/**
 * ClassName: PageUtil <br/>
 * Function: TODO 功能描述 <br/>
 * date: 2018年6月13日 下午12:17:29 <br/>
 * 
 * @author 倪卟懂
 * @version 1.0
 * @since JDK 1.8
 */
public class PageUtil<T> {
	// 页数
	private int pageCount;
	// 当前页面
	private int pageIndex = 1;
	// 显示分页的数字序号例如：首页 ... 10 11 12 13 14 15 16 17 18 19 ... 尾页
	private int[] pageNums;
	// 开头是否有省略号
	private boolean hasPreOmit = false;
	// 结尾是否有省略号
	private boolean hasSuffixOmit = false;
	// 所有记录数
	private int recordCount;
	// 页面大小,默认每页20条
	private int pageSize = 5;
	// 页面中的数据
	private List<T> datas;
	// 分页查询条件
	private String where;

	/**
	 * 获取开头是否有省略号...
	 */
	public boolean getHasPreOmit() {
		return hasPreOmit;
	}

	/**
	 * 设置开头是否有省略号...
	 */
	public void setHasPreOmit(boolean hasPreOmit) {
		this.hasPreOmit = hasPreOmit;
	}

	/**
	 * 获取结尾是否有省略号...
	 */
	public boolean getHasSuffixOmit() {
		return hasSuffixOmit;
	}

	/**
	 * 设置结尾是否有省略号...
	 */
	public void setHasSuffixOmit(boolean hasSuffixOmit) {
		this.hasSuffixOmit = hasSuffixOmit;
	}

	/**
	 * 获取总页数
	 */
	public int getPageCount() {
		this.pageCount = (recordCount - 1) / pageSize + 1;
		return this.pageCount;
	}

	/**
	 * 获取当前页显示的数据
	 */
	public List<T> getDatas() {
		return datas;
	}

	/**
	 * 设置当前页显示的数据
	 */
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	/**
	 * 获取当前页，第N页的值为N
	 */
	public int getPageIndex() {
		return pageIndex;
	}

	/**
	 * 设置当前页，第N页的值为N
	 */
	public void setPageIndex(int pageIndex) {
		if (pageIndex < 1) {
			this.pageIndex = 1;
		} else if (pageIndex > getPageCount()) {
			this.pageIndex = getPageCount();
		} else {
			this.pageIndex = pageIndex;
		}
	}

	/**
	 * 获取页面显示的页码数组
	 */
	public int[] getPageNums() {
		return pageNums;
	}

	/**
	 * 设置页面显示的页码数组 3 5
	 */
	public void setPageNums(int displayPageNumber) {
		if (this.getPageCount() <= displayPageNumber) {
			pageNums = new int[this.getPageCount()];

			for (int i = 1; i <= this.getPageCount(); i++) {
				pageNums[i - 1] = i;
			}
			this.setHasPreOmit(false);
			this.setHasSuffixOmit(false);
		} else if (this.getPageIndex() - displayPageNumber / 2 > 1
				&& this.getPageIndex() + displayPageNumber / 2 < this.getPageCount()) {
			pageNums = new int[displayPageNumber];
			for (int i = this.getPageIndex() - displayPageNumber / 2, _index = 0; i <= this.getPageIndex()
					+ displayPageNumber / 2; i++, _index++) {
				pageNums[_index] = i;
			}
			this.setHasPreOmit(true);
			this.setHasSuffixOmit(true);
		} else if (this.getPageIndex() - displayPageNumber / 2 > 1
				&& this.getPageIndex() + displayPageNumber / 2 >= this.getPageCount()) {
			pageNums = new int[displayPageNumber];
			for (int i = this.getPageCount() - displayPageNumber + 1, _index = 0; i <= this
					.getPageCount(); i++, _index++) {
				pageNums[_index] = i;
			}
			this.setHasPreOmit(true);
			this.setHasSuffixOmit(false);
		} else {
			pageNums = new int[displayPageNumber];
			for (int i = 1; i <= displayPageNumber; i++) {
				pageNums[i - 1] = i;
			}
			this.setHasPreOmit(false);
			this.setHasSuffixOmit(true);
		}
	}

	/**
	 * 获取记录总数
	 */
	public int getRecordCount() {
		return recordCount;
	}

	/**
	 * 设置记录总数
	 */
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	/**
	 * 获取每页大小
	 */
	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 设置每页大小
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}
}
