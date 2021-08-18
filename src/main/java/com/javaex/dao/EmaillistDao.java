package com.javaex.dao;

import java.util.List;

public interface EmaillistDao {

	public List<EmaillistVo> getList();
	
	public int insert(EmaillistVo vo);
	
	public void delete(Integer no);

}
