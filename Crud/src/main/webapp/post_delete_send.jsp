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
  // JDBC ����̹� ����
  Class.forName("com.mysql.jdbc.Driver");
  String db_address = "jdbc:mysql://localhost:3306/pratice_board";
  String db_username = "root";
  String db_pwd = "1234";
  Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
  // ���ڿ� ���ڵ� ���
  request.setCharacterEncoding("UTF-8");
	
  Timestamp today_date = new Timestamp(System.currentTimeMillis());
  
  //�Ķ���͸� ���� NUM(��ȣ)�� �޾ƿ� ���ڿ� ������ ����
  String num = request.getParameter("num");
  
  //MYSQL�� �����ϱ����� DELECTQu
  String deleteQuery = "DELETE FROM pratice_board.post WHERE num="+num;
  
  PreparedStatement psmt = connection.prepareStatement(deleteQuery);
  
 	psmt.executeUpdate();
 	
 	response.sendRedirect("post_list.jsp");
  

}catch (Exception ex)
{
  out.println("������ �߻��߽��ϴ�. ���� �޽��� : " + ex.getMessage());
}

%>