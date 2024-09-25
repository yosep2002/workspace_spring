<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/security/tags" prefix = "sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>all.jsp</h1>
	
	<!-- 익명 사용자의 경우 ( 로그인을 하지 않은 경우도 해당 )  -->
	<sec:authorize access="isAnonymous()">
		<a href="/customLogin">Login</a>
	</sec:authorize>
	
	<!-- 인증된 사용자  -->
	<sec:authorize access="isAuthenticated()">
		<a href="/customLogout">Logout</a>
	</sec:authorize>
</body>
</html>