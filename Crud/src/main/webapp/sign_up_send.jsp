<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%
try{

	Class.forName("com.mysql.jdbc.Driver");
  String db_address = "jdbc:mysql://localhost:3306/pratice_board";
  String db_username = "root";
  String db_pwd = "1234";
  Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
  // 문자열 인코딩 방식
  request.setCharacterEncoding("UTF-8");
  
  Timestamp today_date = new Timestamp(System.currentTimeMillis());
  
  
  
  String user_id = request.getParameter("user_id");
  String email = request.getParameter("email");
	String pwd1 = request.getParameter("pwd1");
	String pwd2 = request.getParameter("pwd2");
	
	
	
	
	String insertQuery = "INSERT INTO pratice_board.user(user_id, email, pwd1, pwd2) VALUES(?,?,?,?)";

	PreparedStatement psmt = connection.prepareStatement(insertQuery);

	
	psmt = connection.prepareStatement(insertQuery);
	
	psmt.setString(1,user_id);
	psmt.setString(2, email);
	psmt.setString(3, pwd1);
	psmt.setString(4, pwd2);
	
	
	psmt.executeUpdate();
	
	response.sendRedirect("sign_in.jsp");
	
}

catch (Exception ex)
{
  out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}

%>
    