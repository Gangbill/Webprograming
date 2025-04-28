<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Validation</title>
</head>
<script type="text/javascript">	

	function checkPasswd() {
		var id = document.getElementById("id").value;
		var pw = document.getElementById("pw").value;		
		var title = document.getElementById("title").value;
		
		if (id.length == 0) {
			alert("아이디를 입력해주세요");
			form.id.select();
			return false;
		}
		
		if (id.length < 5) {
			alert("아이디를 5자 이상 입력해주세요");
			form.id.select();
			return false;
		}
		
		for (i=0; i<id.length; i++){
			var ch = id.charAt(i);
        
			if ((ch<'a'||ch>'z') && (ch<'A'||ch>'Z') && (ch>'0'||ch<'9')){
				alert("아이디는 영문자로만 입력 가능 합니다!");
				form.id.select();
				return false;
			}
		}
		
		if (pw.length == 0) {
			alert("비밀번호를 입력해주세요");
			form.pw.select();
			return false;
		}
		
		if (pw.indexOf(id) > -1) {
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			form.pw.select();
			return false;
		}
		
		if (title.length == 0) {
			alert("제목을 입력해주세요");
			form.title.select();
			return false;
		}
		
		if (!isNaN(title.substr(0, 1))) {
			alert("제목은 숫자로 시작할 수 없습니다!");
			form.title.select();
			return false;
		}
		
		document.form.submit();

	}
</script>
<body>
	<div class="container">
	<form name="form" method="post" action="validation_process012.jsp">
		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">아이디</label>
    		<div class="col-sm-10">
      			<input type="text" class="form-control" id="id" name="id">
    		</div>
  		</div>
		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">비밀번호</label>
    		<div class="col-sm-10">
      			<input type="text" class="form-control" id="pw" name="pw">
    		</div>
  		</div>  		
 		<div class="row mb-3">
		    <label for="staticEmail" class="col-sm-2 col-form-label">제목</label>
    		<div class="col-sm-10">
      			<input type="text" class="form-control" id="title" name="title">
    		</div>
  		</div> 
  		<div class="row mb-3">
    	 	<div class="col-sm-12 text-end">
      			<input type="button" class="btn btn-primary" value="전송" onclick="checkPasswd()">
    		</div>    	
  	  	</div> 			
	</form>
</div>
</body>
<html>