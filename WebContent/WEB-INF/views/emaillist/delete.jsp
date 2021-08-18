<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.EmaillistDao"%>
<%@ page import="com.javaex.dao.EmaillistDaoImpl"%>
<%@ page import="com.javaex.dao.EmaillistVo"%>

<% 
	request.setCharacterEncoding("UTF-8");
	Integer no = Integer.parseInt(request.getParameter("no"));
	
	//out.println(no);
	
  	EmaillistDao dao = new EmaillistDaoImpl();
	dao.delete(no);
    response.sendRedirect("list.jsp");
	
%>
