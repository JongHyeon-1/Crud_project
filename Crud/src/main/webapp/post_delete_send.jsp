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
  // JDBC 드라이버 연결
  Class.forName("com.mysql.jdbc.Driver");
  String db_address = "jdbc:mysql://localhost:3306/pratice_board";
  String db_username = "root";
  String db_pwd = "1234";
  Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
  // 문자열 인코딩 방식
  request.setCharacterEncoding("UTF-8");
	
  Timestamp today_date = new Timestamp(System.currentTimeMillis());
  
  //파라미터를 통해 NUM(번호)를 받아와 문자열 변수에 저장
  String num = request.getParameter("num");
  
  //MYSQL로 전송하기위한 DELECTQu
  String deleteQuery = "DELETE FROM pratice_board.post WHERE num="+num;
  
  PreparedStatement psmt = connection.prepareStatement(deleteQuery);
  
 	psmt.executeUpdate();
 	
 	response.sendRedirect("post_list.jsp");
  

}catch (Exception ex)
{
  out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}

%>