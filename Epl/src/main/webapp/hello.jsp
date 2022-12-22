<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
	<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css" />
	
<title>K-리그</title>

</head>
<body>
<div style="width:1900px;" align="center">
	
	<jsp:include page="menu.jsp" />
	
	<img src="./upload2/k3.jpg" width="100%" class="img-fluid" alt="Responsive image">
    
    <h3><strong>하이라이트</strong></h3> <div align= right ><a href="#" style="color:black;" >영상 더보기</a></div>
	<hr style="border: inset 10px;">
	<div>
	 <iframe 
        width="500" height="255" 
        src="https://www.youtube.com/embed/7FsWq3LBTvc" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
    </iframe>
	
	<iframe 
        width="500" height="255" 
        src="https://www.youtube.com/embed/9P73On6O1l8" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
    </iframe>
    
    <iframe 
        width="500" height="255" 
        src="https://www.youtube.com/embed/PTEEoRATVL8" 
        title="YouTube video player" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
    </iframe>
    
    </div>
    
    <h3><strong>K-LEAGUE 팀</strong></h3> <div align= right ><a href="teamInfomation.jsp" style="color:black;" >팀정보 더보기</a></div>
	<hr style="border: inset 10px;">
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
			<div class="col-md-2">
				<img src="./upload2/<%=rs.getString("filename")%>"
				style="width:150">
			</div>
			<%
				}
			
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null);
				conn.close();
				 %>
		</div>
	</div>	
	<hr >
   </div>
	<hr >
    
	<jsp:include page="footer.jsp" />
</body>
</html>

