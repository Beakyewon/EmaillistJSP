<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.EmaillistDao"%>
<%@ page import="com.javaex.dao.EmaillistDaoImpl"%>
<%@ page import="com.javaex.dao.EmaillistVo"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String lastName 	= request.getParameter("lastname");
	String firstName 	= request.getParameter("firstname");
	String email 		= request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo(lastName, firstName, email);
	
	EmaillistDao dao = new EmaillistDaoImpl();
	int count = dao.insert(vo);
	
	if(count >= 1){
	  response.sendRedirect("list.jsp");
	}
	
%>
