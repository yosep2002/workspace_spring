const f = document.forms[0];
document.querySelectorAll("button").forEach(btn => {
	btn.addEventListener('click', (e) => {
		let type = btn.getAttribute('id');
		
		if (type === 'signInBtn') {
			if (validateSign()) {  // validateSign()이 true일 때만 폼 제출
				f.action = "/board/signIn";
				f.submit();
			}
		}
	});
});

function validateSign() {
	var userId = document.getElementById('userId').value;
	var userPw = document.getElementById('userPw').value;
	var cpassword = document.getElementById('confirmPassword').value;
	var userName = document.getElementById('userName').value;
	
	if (!userId) {
		alert("아이디를 입력하세요!");
		return false;
	}
	if (!userPw) {
		alert("비밀번호를 입력하세요!");
		return false;
	}
	if (userPw !== cpassword) {
		alert("비밀번호가 일치하지 않습니다!");
		return false;
	}
	if (!userName) {
		alert("이름을 입력하세요!");
		return false;
	}

	// 최종 확인 창 띄우기
	if (confirm("회원가입을 진행하시겠습니까?")) {
		alert("회원가입이 정상적으로 처리되었습니다!");
		return true;
	} else {
		alert("회원가입이 취소되었습니다.");
		return false;
	}
}
