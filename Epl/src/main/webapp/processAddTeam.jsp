<%-- <%@ page contentType="text/html; charset=utf-8"%> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> --%>
<%-- <%@ page import="java.util.*" %> --%>
<%-- <%@ page import="java.time.format.*" %> --%>
<%-- <%@ page import="java.time.*" %> --%>

<%-- <% --%>
// 	request.setCharacterEncoding("UTF-8");
	
// 	String name = request.getParameter("name");
// 	String home = request.getParameter("home");	
// 	String filed = request.getParameter("filed");
// 	String coach = request.getParameter("coach");
// 	String filename = request.getParameter("filename");
	
	
<%-- %>	 --%>
	
<%-- 	<sql:setDataSource var="dataSource" --%>
<%-- 		url = "jdbc:oracle:thin:@localhost:1521:orcl" --%>
<%-- 		driver="oracle.jdbc.driver.OracleDriver" --%>
<%-- 		user = "football" --%>
<%-- 		password = "football" /> --%>
	
<%-- 	<sql:update dataSource="${dataSource}" var="resultSet"> --%>
<!-- 		INSERT INTO teamInfo VALUES(?,?,?,?,?) -->
<%-- 		<sql:param value="<%=name %>" /> --%>
<%-- 		<sql:param value="<%=home %>" /> --%>
<%-- 		<sql:param value="<%=filed %>" /> --%>
<%-- 		<sql:param value="<%=coach %>" /> --%>
<%-- 		<sql:param value="<%=filename %>" /> --%>
		
<%-- 			</sql:update> --%>
	

<%-- 	<% --%>
// 		session.setAttribute("sessionName", name);
// 		session.setAttribute("sessionHome", home);
// 		session.setAttribute("sessionFiled", filed);
// 		session.setAttribute("sessionCoach", coach);
// 		session.setAttribute("sessionFileName", filename);
		
<%-- 	%> --%>
<%-- 		<c:redirect url="teamInfomation.jsp" /> --%>
		
		
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder =  getServletContext().getRealPath("/") + "upload2";
	System.out.println("경로확인---->"+realFolder);
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());  

	String name = multi.getParameter("name");
	String home = multi.getParameter("home");
	String filed = multi.getParameter("filed");
	String coach = multi.getParameter("coach");
	
	
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);

	PreparedStatement pstmt = null;
	
	String sql = "insert into teamInfo values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, home);
	pstmt.setString(3, filed);
	pstmt.setString(4, coach);
	pstmt.setString(5, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	response.sendRedirect("teamInfomation.jsp");
%>
