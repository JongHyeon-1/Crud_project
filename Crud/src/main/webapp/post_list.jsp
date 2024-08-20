<!-- SQL ������ ���� import -->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
  <style>
        /* ��ܹ� ��Ÿ�� */
        nav {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
        }
        nav ul li {
            display: inline;
            margin-right: 20px;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }
        nav ul li a:hover {
            text-decoration: underline;
        }
    </style>
<meta charset="EUC-KR">
<title>�Խñ� ���</title>
</head>
<body>
  <nav>
        <ul>
            <li><a href="main.html">Ȩ</a></li>
            <li><a href="post_list.jsp">�Խ���</a></li>
       
        </ul>
    </nav>
    <!-- �Խñ� ��� ������ ǥ�� -->
    <h1>�Խñ� ���</h1>
      <%
      try
      {
        // JDBC ����̹� ����
        Class.forName("com.mysql.jdbc.Driver");
        String db_address = "jdbc:mysql://localhost:3306/pratice_board";
        String db_username = "root";
        String db_pwd = "1234";
        Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
        
        // MySQL�� �����ϱ� ���� �������� insertQuery ���ڿ� ����
        String insertQuery = "SELECT * FROM pratice_board.post order by num desc";
        
        // MySQL ������ ����
        PreparedStatement psmt = connection.prepareStatement(insertQuery);
        
        // �������� ������ �޾ƿ� ������ result ��ü�� ����
        ResultSet result = psmt.executeQuery();%>
        
        <!-- �Խñ� ����� ǥ���� �⺻ ���̺� ���� -->
        <table border="1">
        <tr>
          <td colspan="5">
            <h3>�Խñ� ���� Ŭ���� �� ���� ����</h3>
          </td>
        </tr>
        <tr>
		  <td colspan="5">
            <button type="button" value="�ű� �� �ۼ�" onClick="location.href='post_new.jsp'">�ű� �� �ۼ�</button>
          </td>
        </tr>
        <tr>
          <td>��ȣ</td>
          <td>�ۼ���</td>
          <td>����</td>
          <td>�ۼ���</td>
          <td>����</td>
        </tr>
        <%
        // �޾ƿ� ������ �Է��ϰ�, �ϳ��� Ŀ���� �������� �ѱ�
        while (result.next())
          {%>
            <tr>
              <!-- ��ȣ <td> �Ʒ��� DB���� �޾ƿ� num Į���� ���� -->
              <td><%=result.getInt("num") %></td>
              
              <!-- �ۼ��� <td> �Ʒ��� DB���� �޾ƿ� writer Į���� ���� -->
              <td><%=result.getString("writer") %></td>
              
              <!-- ���� <td> �Ʒ��� DB���� �޾ƿ� title Į���� ����, ���� Ŭ���� post_read.jsp�� ����Ǹ� num Į������ parameter�� �ѱ� -->
              <td><a href="post_read.jsp?num=<%=result.getInt("num") %>"><%=result.getString("title") %></a></td>
              
              <!-- �ۼ��� <td> �Ʒ��� DB���� �޾ƿ� reg_date Į���� ���� -->
              <td><%=result.getTimestamp("reg_date") %></td>
              
              <td>
                <!-- ���� ��ư�� ������ post_modify.jsp�� ����Ǹ� num Į������ parameter�� �ѱ� -->
                <button type="button" value="����" onClick="location.href='post_modify.jsp?num=<%=result.getString("num") %>'">����</button>
                <!-- ���� ��ư�� ������ post_delete_send.jsp�� ����Ǹ� num Į������ parameter�� �ѱ� -->
                <button type="button" value="����" onClick="location.href='post_delete_send.jsp?num=<%=result.getString("num") %>'">����</button>
              </td>
            </tr>
            <%
            }%>
          </table>
        <%
        }
      catch (Exception ex)
      {
        out.println("������ �߻��߽��ϴ�. ���� �޽��� : " + ex.getMessage());
      }%>
</body>
</html>