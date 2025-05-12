<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage2.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5">Error 검사</h1>
		</div>
	</div>
	<div class="container py-4">
	<div class="row align-items-md-stretch">
		<form action="errorPage2.jsp" method="post">
			<div class="mb-3 row">
				<label class="col-sm-2">숫자1</label>
				<div class="col-sm-3"><input type="text" name="num1" class="form-control"></div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">숫자2</label>
				<div class="col-sm-3"><input type="text" name="num2" class="form-control"></div>
			</div>
			<div>
				<input type="submit" class="btn btn-primary" value="전송">
			</div>
		</form>
	</div>
	</div>
</body>
</html>