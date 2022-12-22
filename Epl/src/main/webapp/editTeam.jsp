<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css" />
<title>팀 삭제</title>
<script type="text/javascript">
	function deleteConfirm(name){
		if (confirm("해당 팀을 삭제합니다!") == true)
			location.href = "./deleteTeam.jsp?name=" + name;
		else
			return;
	}
</script>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<div style="width:1900px;" align="center">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">팀 삭제</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			
			
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from teamInfo";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="./upload2/<%=rs.getString("filename")%>"
				style="width:150">
				<h3><%=rs.getString("name")%></h3>
				<p>연고지 : <%=rs.getString("home") %>
				<p>구장명 : <%=rs.getString("filed") %>
				<p>감독명 : <%=rs.getString("coach") %>

	<p><%
					if (edit.equals("delete")) {
				 	%>
				 	<a href="#" onclick="deleteConfirm('<%=rs.getString("name") %>')"
				 	class="btn btn-danger" role="button"> 삭제 &raquo;</a>
			<%
					}
			%>
			</div>
			
			<%
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
			</div>
			</div>
			<hr>
			</div>
			<jsp:include page="footer.jsp" />
</body>
</html>