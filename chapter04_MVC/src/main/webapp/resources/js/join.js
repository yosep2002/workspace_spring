const f = document.forms[0];

function signIn(f){
	validate();
	f.action = "/signIn";
	f.submit();
}
function validate(){
	if (!f.userId.value) {
		
	}
}