<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
try

{
	 Class.forName("com.mysql.jdbc.Driver");
	  String db_address = "jdbc:mysql://localhost:3306/pratice_board";
	  String db_username = "root";
	  String db_pwd = "1234";
	  Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
	  // 문자열 인코딩 방식
	  request.setCharacterEncoding("UTF-8");
	  
	  Timestamp today_date = new Timestamp(System.currentTimeMillis());
	  
	  String num = request.getParameter("num");
	  String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		
		
		 String insertQuery = "SELECT * FROM pratice_board.post WHERE num=" + num;
     PreparedStatement psmt = connection.prepareStatement(insertQuery);
     
     ResultSet result = psmt.executeQuery();
     while(result.next())
     {
    	 
     
		String modifyQuery = "UPDATE pratice_board.post SET writer=? ,title=?, content=? WHERE num = "+num;

		 psmt = connection.prepareStatement(modifyQuery);
		
		
		
		psmt = connection.prepareStatement(modifyQuery);
		psmt.setString(1, writer);
		psmt.setString(2, title);
		psmt.setString(3, content);
		psmt.executeUpdate();
		
		response.sendRedirect("post_list.jsp");
     }
		
		
	
		
	
	
}catch (Exception ex)
{
	 out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}
%>