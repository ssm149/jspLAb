<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.Cookies"%>

<%
	request.setCharacterEncoding("utf-8");

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	if (email.equals("hanguk@naver.com") && password.equals("1234")) {
		//request.getSession().setAttribute("email", email);
		response.addCookie(Cookies.createCookie("AUTH", email, "/", -1));
		response.sendRedirect("../main/index.jsp");
	} else {
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>
