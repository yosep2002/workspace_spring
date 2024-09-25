<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="#">
<link rel="stylesheet" href="/resources/css/header.css">
<title>MemberBoard</title>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="header-title">
				<a href="mainPage">MemberBoard</a>
			</div>
			<div class="header-member">
				<sec:authorize access="isAuthenticated()">
					<button type="button" class="header-btn" onclick="location.href='/customLogout'">로그아웃</button>
				</sec:authorize>
				
				<sec:authorize access="isAnonymous()">
				<button type="button" class="header-btn" onclick="location.href='/customLogin'">로그인</button>
				
				<button type="button" class="header-btn" onclick = "joinPage()">회원가입</button>				
				</sec:authorize>
			</div>
			<div class="menu">
				<a href="boardList">게시판</a>
			</div>
		</div>
		<div class="main">
<script type="text/javascript">
function joinPage() {
	location.href = "/board/join";
}
</script>