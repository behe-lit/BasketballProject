<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content = "text/html; charset=UTF-8">
<meta name="viewport" content = "width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>코비를 추모하며</title>
</head>
<body>
	<nav class ="navbar navbar-default">
	<div class="navbar-header">
	<button type = "button" class="navbar-toggle collapsed"
		data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
		aria-expanded="false">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="main.jsp">NBA player 웹사이트</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><a href="main.jsp">메인</a></li>
			<li><a href="main.jsp">게시판</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class = "dropdown-toggle"
				data-toggle = "dropdown" role = "button" aria-haspopup="ture"
				aria-expanded="false">접속하기<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li class="active"><a href="login.jsp">로그인</a>
				<li><a href="join.jsp">선수조회</a></li>
		</ul>
		</li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top:20px;">
				<form method="post" action="joinAction.jsp">
					<h3 style="text-align: center;">선수조회 화면</h3>
					<div class="form-group">
						<input type="text" class="form control" placeholder="선수명" name="name" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form control" placeholder="Player No." name="num" maxlength="20">
					</div>
					
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary active">
							<input type="radio" name = "position" autocomplete="off" value="SG" checked>SG
						</label>
						<label class="btn btn-primary">
							<input type="radio" name = "position" autocomplete="off" value="C" checked>C
						</label>
						<label class="btn btn-primary active">
							<input type="radio" name = "position" autocomplete="off" value="PG" checked>PG
						</label>
						<label class="btn btn-primary">
							<input type="radio" name = "position" autocomplete="off" value="PF" checked>PF
						</label>
						<label class="btn btn-primary">
							<input type="radio" name = "position" autocomplete="off" value="SF" checked>SF
						</label>
						</div>
					</div>
					
					<input type="submit" class="btn btn-primary form control" value="검색">
				</form>
		<div class="col-lg-4"></div>
	</div>
	</div>
	<div class="col-lg-4"></div>
	</div>
	<script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
</body>
</html>