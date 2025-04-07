<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<form action="form022_process.jsp" name="form" method="post">
		<div class="row mb-3">
			<label for="name1" class="col-sm-2 col-form-label">이름</label>
			<div class="col-sm-10">
    			<input type="text" class="form-control" id="name1" name="name">
			</div>
		</div>
		<div class="row mb-3">
			<label for="address1" class="col-sm-2 col-form-label">주소</label>
			<div class="col-sm-10">
    			<input type="text" class="form-control" id="address1" name="address">
			</div>
		</div>
		<div class="row mb-3">
			<label for="email1" class="col-sm-2 col-form-label">이메일</label>
			<div class="col-sm-10">
    			<input type="text" class="form-control" id="email1" name="email">
			</div>
		</div>
		<fieldset class="row mb-3">
			<legend class="col-form-label col-sm-2 pt-0">성별</legend>
				<div class="col-sm-10">
      				<div class="form-check form-check-inline">
        				<input class="form-check-input" type="radio" name="sex" id="inlineRadios1" value="남성" checked>
        				<label class="form-check-label" for="inlineRadios1">남성</label>
        			</div>
        			<div class="form-check form-check-inline">
        				<input class="form-check-input" type="radio" name="sex" id="inlineRadios2" value="여성">
        				<label class="form-check-label" for="inlineRadios2">여성</label>
        			</div>
				</div>
		</fieldset>
		<p>	<input type="submit" value="전송" />
	</form>
</body>
<html>