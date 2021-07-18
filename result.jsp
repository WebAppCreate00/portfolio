<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 : <%= request.getParameter("name") %> <br>
이메일 : <%= request.getParameter("email") %> <br>
연락처 : <%= request.getParameter("hp") %>

<%
	Enumeration<String> enums = request.getParameterNames();
	while(enums.hasMoreElements()) {
		out.println(request.getParameter(enums.nextElement())+"<br>");
	}
%>
<%= request.getRemoteAddr() %>
<% response.sendRedirect("index.jsp"); %>
</body>
</html>