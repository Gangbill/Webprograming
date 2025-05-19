<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Session</title>
</head>
<body>

<div class="container py-4">
<br>
	<div class="row align-items-md-stretch">
		<form action="session_process2.jsp" method="post">
			<div class="mb-3 row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3"><input type="text" name="id" class="form-control"></div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3"><input type="password" name="passwd" class="form-control"></div>
			</div>
			<div>
				<input type="submit" class="btn btn-primary" value="전송">
			</div>
		</form>
	</div>
	</div>
</body>
</html>