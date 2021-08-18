<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.EmaillistVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%
    List<EmaillistVo> list = (List<EmaillistVo>)request.getAttribute("list");
%>

<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>이메일 관리</title>
</head>
<body>
<form action="/EmaillistJSP/emaillist" method="post">
    <input type="hidden" name="a" value="add">
    	Last name(성): 	<input type="text" name="lastname" 	value=""><br>
		First name(이름):	<input type="text" name="firstname" value=""><br>
		Email address:	<input type="text" name="email" 	value=""><br>
		<input type="submit" value="등록">
</form>
<br>
<% if(list != null){
	for(EmaillistVo vo : list) {
		%>
		<table border="1" cellpadding="5" cellspacing="2">
			<tr>
	      <td align=right width="110">No:</td>
	      <td width="170"> <a href="/EmaillistJSP/emaillist?a=delete&no=<%=vo.getNo() %>">삭제</a> </td>
	    </tr>
	    <tr>
				<td align=right width="110">Last name:</td>
				<td width="170"><%=vo.getLastName() %></td>
			</tr>
			<tr>
				<td align=right>First name:</td>
				<td><%=vo.getFirstName() %></td>
			</tr>
			<tr>
				<td align=right>Email address:</td>
				<td><%=vo.getEmail() %></td>
			</tr>
		</table>
		<br>
	<% }%>
<% } %>
</body>
</html>