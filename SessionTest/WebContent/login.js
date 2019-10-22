/**
 * 로그인을 위한 js
 */
function sendit(){
	var frm = document.loginForm
	if(frm.userid.value == ""){
		alert("아이디를 입력해 주세요")
		frm.userid.focus()
		return false
	}
	if(frm.pwd.value == ""){
		alert("패스워드를 입력해 주세요")
		frm.pwd.focus()
		return false	// false 이므로  받아서 처리하는게 없으므로 그냥 내려감
	}
	frm.submit()     //해당정보를 서버로 보내줌
}