<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="style/css/post_list.css" rel="stylesheet" type="text/css">
<meta charset="EUC-KR">
<title>�ű� �Խñ� �ۼ�</title>
</head>
<body>
    <h1>�ű� �Խñ� �ۼ�</h1>
    <!-- �Է°��� �����ϱ� ���� post method ����� form action ���� -->
    <form action="post_new_send.jsp" method="post">
        <table>
        
            <tr>
           			<div>
                <input type="text"  name="writer"required>
                <label>�ۼ���</label>
                <span></span>
                </div>
            </tr>
          
            <tr>
               <div>
                <input type="text" name="title" required>
                <label>����</label>
                <span></span>
                </div>
                
            </tr>
            <tr>
           <td>����</td>
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
                    <!-- ���� ��ư�� ������ post_read_send.jsp�� ����Ǹ�, -->
                    <!-- submit ������ button�� ����, post ������� ���� ���� -->
                    <button type="submit">����</button>
                    <!-- ������� ��ư�� ������ post_list.jsp�� ����� -->
                    <button type="button" onclick="location.href='post_list.jsp'">�������</button>
                    <!-- �ʱ�ȭ ��ư�� ������ text �Է°��� ��� �ʱ�ȭ�� -->
                    <button type="reset">�ʱ�ȭ</button>
                </td>
            </tr>
            </div>
        </table>
    </form>
</body>
</html>

