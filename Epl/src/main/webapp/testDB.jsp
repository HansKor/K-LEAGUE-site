<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="QueryBean" scope="page" class="db.beans.QueryBean" />
<jsp:setProperty property="*" name="QueryBean" />
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	request.setCharacterEncoding("UTF-8");
// 	String user_id = "";
// 	if(request.getParameter("user_id") == null )
// 		user_id = "";
// 	else
// 		user_id = request.getParameter("user_id").trim();
		
// 	String user_id = (request.getParameter("user_id") == null) ? "" : request.getParameter("user_id").trim(); ;
	QueryBean.getConnection();
	ArrayList resArr = new ArrayList();
	try {
		resArr = QueryBean.getUserInfo();
		
	} catch (SQLException e) {
		out.print(e.toString());
	} finally {
		QueryBean.closeConnection(); 
	}
	out.println("{");
	out.println("\"datas\":[");
	if (resArr.size() == 0) {
		out.println("}");
		out.println("}");
	} else {
		out.print("{");
		out.print("\"TITLE\":\"" + (String) resArr.get(0) + "\", ");
		out.print("\"START\":\"" + (String) resArr.get(1) + "\" ");
		out.print("}");
		for (int i = 2; i < resArr.size(); i += 2) {
			out.print(",");
			out.print("{");
			out.print("\"TITLE\":\"" + (String) resArr.get(i) + "\", ");
			out.print("\"START\":\"" + (String) resArr.get(i + 1) + "\" ");
			out.print("}");
		}
		out.println("]");
		out.println("}");
	}
%>
