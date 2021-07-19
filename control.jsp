<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" errorPage="error.jsp"
	import="mis.prj.*, java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="dao" class="mis.prj.AddrDAO" />
<jsp:useBean id="vo" class="mis.prj.AddrVO" />
<jsp:setProperty name="vo" property="*" />
<%
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");

	// 파라미터에 따른 요청 처리

	if (action.equals("list")) {
		ArrayList<AddrVO> datas = dao.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("addrList.jsp");
	}
	else if (action.equals("insert")) {
		if (dao.insertDB(vo)) {
			response.sendRedirect("control.jsp?action=list");
		} else
			throw new Exception("DB 입력오류");
	}
	else if (action.equals("edit")) {
		AddrVO aBank = dao.getDB(vo.getAn());
		request.setAttribute("vo", aBank);
		pageContext.forward("addrEdit.jsp");
	}
	else if (action.equals("update")) {
		if (dao.updateDB(vo)) {
			response.sendRedirect("control.jsp?action=list");
		} else
			throw new Exception("DB 갱신오류");
	}
	else if (action.equals("delete")) {
		if (dao.deleteDB(vo.getAn())) {
			response.sendRedirect("control.jsp?action=list");
		} else
			throw new Exception("DB 삭제 오류");
	} else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
%>