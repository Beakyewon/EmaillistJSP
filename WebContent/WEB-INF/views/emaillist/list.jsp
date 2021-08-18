<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.EmaillistDao"%>
<%@ page import="com.javaex.dao.EmaillistVo"%>
<%@ page import="com.javaex.dao.EmaillistDaoImpl"%>
<%@ page import="java.util.List"%>

<%
	EmaillistDao dao = new EmaillistDaoImpl();

	List<EmaillistVo> list = dao.getList();
	//System.out.println(list.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="add.jsp" method="get">
    	Last name(성): 	<input type="text" name="lastname" 	value=""><br>
		First name(이름):	<input type="text" name="firstname" value=""><br>
		Email address:	<input type="text" name="email" 	value=""><br>
		<input type="submit" value="등록">
</form>
<br>
<br>

</body>
</html>