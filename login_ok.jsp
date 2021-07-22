<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼데이터 처리(id, pw파라미터)
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//2. SQL문 작성(select로 가입당시의 패스워드를 조회)
	String sql = "SELECT pw, name FROM users " 
				+ "WHERE id='" + id + "'";
	
	//3. DB연동에 필요한 변수들 선언.
	String url = "jdbc:mysql://localhost:3306/jsp_practice";
	String uid = "jsp";
	String upw = "jsp";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	//4. try안에서 JDBC로 DB연결	
	//5. ResultSet을 통해 결과값 소비를 통해 해당 로그인 결과에 맞는 페이지 안내.
	//6. 로그인 성공시 id, name 세션처리.
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, upw);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			String dbPw = rs.getString("pw");
			String dbName = rs.getString("name");
			if(pw.equals(dbPw)) {
				session.setAttribute("user_id", id);
				session.setAttribute("user_name", dbName);
				response.sendRedirect("login_welcome.jsp");
			}else {
				response.sendRedirect("login_fail_pw.jsp");
			}			
		}else {
			response.sendRedirect("login_fail_id.jsp");
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if(conn!=null) conn.close();
			if(stmt!=null) stmt.close();
			if(rs!=null) rs.close();
		} catch(Exception e2) {
			e2.printStackTrace();
		}
	}
%>





