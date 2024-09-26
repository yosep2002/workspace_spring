<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.signup-form {
	width: 110%;
	max-width: 400px;
	margin: 100px auto;
	padding: 30px;
	border: 1px solid #ddd;
	border-radius: 10px;
	background-color: white;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.signup-form h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.signup-form label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.signup-form input {
	width: calc(100% - 20px); /* 패딩 및 여백 감안 */
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

.signup-form input[type="text"],
.signup-form input[type="password"] {
	margin-bottom: 15px;
}

.signup-btn {
    width: 100%;
    padding: 10px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.signup-btn:hover {
    background-color: #218838;
}


.signup-form p {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
	color: #666;
}

</style>
</head>
<body>
	<div class="signup-form">
    <h2>회원가입</h2>
    <form id="signupForm" method="post">
        <label for="userId">아이디</label>
        <input type="text" id="userId" name="userId" required>

        <label for="password">비밀번호</label>
        <input type="password" id="userPw" name="userPw" required>

        <label for="confirmPassword">비밀번호 확인</label>
        <input type="password" id="confirmPassword" required>

        <label for="name">이름</label>
        <input type="text" id="userName" name="userName" required>

        <!-- 회원가입 버튼 -->
        <button type="button" class="signup-btn" id = "signInBtn">회원가입</button>

        <!-- 로그인 페이지로 이동하는 링크 -->
        <p>이미 계정이 있으신가요? <a href="/customLogin">로그인</a></p>
    </form>
</div>
</body>
<script type="text/javascript" src="/resources/js/join.js"></script>
</html>
