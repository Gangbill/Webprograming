<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">	

	function checkPasswd() {
		var id = document.getElementById("id").value;
		var ch = form.id.value.charAt("id");
		var passwd = document.getElementById("passwd").value;	
		var title = document.getElementById("title").value;
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		if (id.length < 5) {		
			alert("아이디는   5자 이상으로 입력해야 합니다!");
			form.passwd.select();
			return;
		}	
		if ((ch<'a'||ch>'z') && (ch<'A'||ch>'Z') && (ch>'0'||ch<'9')){
			alert("아이디는 영문자로만 입력 가능 합니다!");
			form.id.select();
			return;
		}
		if (passwd.length == 0) {
			alert("비밀번호를 입력해주세요");
			return false;

		}
		
		if (passwd.indexOf(id) > -1) {
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return false;
		}
		if (title.indexOf(" ") != -1){
			alert("제목은 공백을 입력할 수 없습니다.");
		}
		if (!regExpId.test(title)) {
			alert("제목은 숫자로 시작할 수 없습니다.!");
			form.id.select();
			return;
		}

	}
</script>
<body>
	<form name="form" action="validation_process2.jsp" method="post">
		<p>	아이디 : <input type="text" id="id" name="id">
		<p>	비밀번호 : <input type="text" id="passwd" name="passwd">
		<p>	제목 : <input type="text" id="title" name="title">
		<p><input type="button" value="전송" onclick="checkPasswd()">
		
	</form>
</body>
<html>