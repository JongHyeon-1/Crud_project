<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="board.jsp" method="post">

   		  <label for="title">����</label>
        <input type="text" id="title" name="title">
        <br>
        
        <label for="writer">�ۼ���</label>
        <input type="text" id="writer" name="writer">
        <br>
        <label for="content">����</label>
        <input type="text" id="content" name="content">
        <br>
        <label for="regdate">�ð�</label>
        <input type="date" id="regdate" name="regdate">
        <br>


</form>
</body>
</html>


<!-- 
mysql> create table BOARD (
    ->         seq int AUTO_INCREMENT,
    ->         title varchar(100),
    ->         writer varchar(20),
    ->         content varchar(1000),
    ->         regdate timestamp default current_timestamp,
    ->         cnt int default 0,
    ->         primary key(seq)
    -> ); -->