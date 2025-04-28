<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Validation</title>
</head>
<script type="text/javascript">	

	function checkPasswd() {
		var id = document.getElementById("id").value;
		var ch = form.id.value.charAt(0);
		var passwd = document.getElementById("passwd").value;	
		var title = document.getElementById("title").value;
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		var regExpId2 = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|0-9]/;
		if (id.length < 5) {		
			alert("아이디는   5자 이상으로 입력해야 합니다!");
			form.passwd.select();
			return;
		}	
		if ((ch<'a'||ch>'z') && (ch<'A'||ch>'Z') && (ch>'0'||ch<'9')){
			alert("아이디는 영문 문자로만 입력 가능 합니다!");
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
			return;
		}
		if (!regExpId.test(title)) {
			alert("제목은 숫자로 시작할 수 없습니다.!");
			form.title.select();
			return;
		}
	form.submit();
	}
</script>
<body>
	<form name="form" action="validation_process2.jsp" method="post">
		<div class="row mb-3">
		<label for="id" class="col-sm-2 col-form-label">아이디</label>
		 <div class="col-sm-10">
      <input type="email" class="form-control" id="id"></div>
  </div>
  <div class="row mb-3">
		<label for="passwd" class="col-sm-2 col-form-label">비밀번호</label>
		 <div class="col-sm-10">
      <input type="email" class="form-control" id="passwd"></div>
  </div>
  <div class="row mb-3">
		<label for="title" class="col-sm-2 col-form-label">제목</label>
		 <div class="col-sm-10">
      <input type="email" class="form-control" id="title"></div>
  </div>
		
		<p><input type="button" value="전송" onclick="checkPasswd()">
		
	</form>
</body>
<html>