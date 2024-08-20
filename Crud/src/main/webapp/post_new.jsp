<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="style/css/post_list.css" rel="stylesheet" type="text/css">
<meta charset="EUC-KR">
<title>신규 게시글 작성</title>
</head>
<body>
    <h1>신규 게시글 작성</h1>
    <!-- 입력값을 전송하기 위한 post method 방식의 form action 선언 -->
    <form action="post_new_send.jsp" method="post">
        <table>
        
            <tr>
           			<div>
                <input type="text"  name="writer"required>
                <label>작성자</label>
                <span></span>
                </div>
            </tr>
          
            <tr>
               <div>
                <input type="text" name="title" required>
                <label>제목</label>
                <span></span>
                </div>
                
            </tr>
            <tr>
           <td>내용</td>
           <td><textarea rows="30" cols="45" name="content"></textarea></td>
            </tr>
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>

 
<style>
    textarea {
        resize: none;
        overflow-y: hidden;
        height: auto;
        padding: 10px;
    }
</style>
 
<script>
    $('textarea').on('keyup', function (e) {
        $(this).css('height', 'auto');
        $(this).height(this.scrollHeight - 15);
    });
</script>
            <tr>
                <td colspan="2">
                    <!-- 저장 버튼을 누르면 post_read_send.jsp로 연결되며, -->
                    <!-- submit 형식의 button을 통해, post 방식으로 내용 전송 -->
                    <button type="submit">저장</button>
                    <!-- 목록으로 버튼을 누르면 post_list.jsp로 연결됨 -->
                    <button type="button" onclick="location.href='post_list.jsp'">목록으로</button>
                    <!-- 초기화 버튼을 누르면 text 입력값이 모두 초기화됨 -->
                    <button type="reset">초기화</button>
                </td>
            </tr>
            </div>
        </table>
    </form>
</body>
</html>

