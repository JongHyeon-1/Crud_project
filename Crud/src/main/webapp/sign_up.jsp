<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="style/css/post_list.css" rel="stylesheet" type="text/css">
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
    <h1>회원가입</h1>
    <!-- 입력값을 전송하기 위한 post method 방식의 form action 선언 -->
    <form action="sign_up_send.jsp" method="post">
        <table>
        
            <tr>
           			<div>
                <input type="text"  name="user_id" required>
                <label>아이디</label>
                <span></span>
                </div>
            </tr>
            
               <tr>
               <div>
                <input type="text" name="email" required>
                <label>이메일</label>
                <span></span>
                </div>
                
            </tr>
          
            <tr>
               <div>
                <input type="text" name="pwd1" required>
                <label>비밀번호</label>
                <span></span>
                </div>
                
            </tr>
            
             <tr>
               <div>
                <input type="text" name="pwd2" required>
                <label>비밀번호 확인</label>
                <span></span>
                </div>
                
            </tr>
            
            
            
          
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>

 

            <tr>
                <td colspan="2">

                    <!-- 저장 버튼을 누르면 post_read_send.jsp로 연결되며, -->
                    <!-- submit 형식의 button을 통해, post 방식으로 내용 전송 -->
                    <button type="submit">저장</button>
                    <!-- 목록으로 버튼을 누르면 post_list.jsp로 연결됨 -->
                   
                  
                </td>
            </tr>
            </div>
        </table>
    </form>
</body>
</html>