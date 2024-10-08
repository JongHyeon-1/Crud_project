<!-- SQL 연결을 위한 import -->
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
        /* 상단바 스타일 */
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
<title>게시글 목록</title>
</head>
<body>
  <nav>
        <ul>
            <li><a href="main.html">홈</a></li>
            <li><a href="post_list.jsp">게시판</a></li>
       
        </ul>
    </nav>
    <!-- 게시글 목록 폼임을 표시 -->
    <h1>게시글 목록</h1>
      <%
      try
      {
        // JDBC 드라이버 연결
        Class.forName("com.mysql.jdbc.Driver");
        String db_address = "jdbc:mysql://localhost:3306/pratice_board";
        String db_username = "root";
        String db_pwd = "1234";
        Connection connection = DriverManager.getConnection(db_address, db_username, db_pwd);
        
        // MySQL로 전송하기 위한 쿼리문인 insertQuery 문자열 선언
        String insertQuery = "SELECT * FROM pratice_board.post order by num desc";
        
        // MySQL 쿼리문 실행
        PreparedStatement psmt = connection.prepareStatement(insertQuery);
        
        // 쿼리문을 전송해 받아온 정보를 result 객체에 저장
        ResultSet result = psmt.executeQuery();%>
        
        <!-- 게시글 목록을 표시할 기본 테이블 생성 -->
        <table border="1">
        <tr>
          <td colspan="5">
            <h3>게시글 제목 클릭시 상세 열람 가능</h3>
          </td>
        </tr>
        <tr>
		  <td colspan="5">
            <button type="button" value="신규 글 작성" onClick="location.href='post_new.jsp'">신규 글 작성</button>
          </td>
        </tr>
        <tr>
          <td>번호</td>
          <td>작성자</td>
          <td>제목</td>
          <td>작성일</td>
          <td>관리</td>
        </tr>
        <%
        // 받아온 정보를 입력하고, 하나씩 커서를 다음으로 넘김
        while (result.next())
          {%>
            <tr>
              <!-- 번호 <td> 아래에 DB에서 받아온 num 칼럼값 삽입 -->
              <td><%=result.getInt("num") %></td>
              
              <!-- 작성자 <td> 아래에 DB에서 받아온 writer 칼럼값 삽입 -->
              <td><%=result.getString("writer") %></td>
              
              <!-- 제목 <td> 아래에 DB에서 받아온 title 칼럼값 삽입, 제목 클릭시 post_read.jsp로 연결되며 num 칼럼값을 parameter로 넘김 -->
              <td><a href="post_read.jsp?num=<%=result.getInt("num") %>"><%=result.getString("title") %></a></td>
              
              <!-- 작성일 <td> 아래에 DB에서 받아온 reg_date 칼럼값 삽입 -->
              <td><%=result.getTimestamp("reg_date") %></td>
              
              <td>
                <!-- 수정 버튼을 누르면 post_modify.jsp로 연결되며 num 칼럼값을 parameter로 넘김 -->
                <button type="button" value="수정" onClick="location.href='post_modify.jsp?num=<%=result.getString("num") %>'">수정</button>
                <!-- 삭제 버튼을 누르면 post_delete_send.jsp로 연결되며 num 칼럼값을 parameter로 넘김 -->
                <button type="button" value="삭제" onClick="location.href='post_delete_send.jsp?num=<%=result.getString("num") %>'">삭제</button>
              </td>
            </tr>
            <%
            }%>
          </table>
        <%
        }
      catch (Exception ex)
      {
        out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
      }%>
</body>
</html>