<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="util.Cookies"%>
<%
	String id = request.getParameter("email");
	String pw = request.getParameter("password");
	
	String uid = "hanguk@naver.com";
	String upw = "1234";

	if (id.equals(uid) || id == uid) {
		if (pw.equals(upw)) {
			//세션 사용
			session.setAttribute("MEMBERID", id);
			//쿠키 사용
			/*Cookie user = new Cookie("id",id);
			user.setPath("/");
			response.addCookie(user);*/
			//request.getSession().setAttribute("id", id);0520
			response.sendRedirect("../main/index.jsp");
		} else { //비밀번호가 일치하지 않을 경우
			%>
			<script>
			alert("비밀번호가 틀립니다.");
			history.back();
			</script>	
		<%
		}
	} else { //방문자가 입력한 id가 일치하지 않을 경우
		%>
		<script>
		alert("존재하지 않는 아이디입니다.");
		history.back();
		</script>	
	<%
	}
%>
<html>
<head>
<title>로그인 확인</title>
</head>
<body>