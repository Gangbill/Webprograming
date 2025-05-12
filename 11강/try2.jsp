<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>
<div class="container py-4">
	<div class="row align-items-md-stretch">
		<form action="tryCatch2.jsp" method="post">
			<div class="mb-3 row">
				<label class="col-sm-2">숫자1</label>
				<div class="col-sm-3"><input type="text" name="num1" class="form-control"></div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">숫자2</label>
				<div class="col-sm-3"><input type="text" name="num2" class="form-control"></div>
			</div>
			<div class="col-sm-5 text-end">
				<input type="submit" class="btn btn-primary" class="col-sm-3" class="text-end" value="전송">
			</div>
		</form>
	</div>
	</div>
</body>
</html>
