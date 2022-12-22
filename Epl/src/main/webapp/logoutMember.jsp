<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css" />
<title>로그아웃</title>
</head>
<body>
<%
	session.invalidate();
%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그아웃이 되었습니다.</h1>
		</div>
	</div>
	<div class="container">
		<p> <a href="hello.jsp" class="btn btn-secondary"> 홈페이지
		&raquo;</a>
	</div>
</body>
</html>
