<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link href="style/css/post_list.css" rel="stylesheet" type="text/css">
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
    <h1>ȸ������</h1>
    <!-- �Է°��� �����ϱ� ���� post method ����� form action ���� -->
    <form action="sign_up_send.jsp" method="post">
        <table>
        
            <tr>
           			<div>
                <input type="text"  name="user_id" required>
                <label>���̵�</label>
                <span></span>
                </div>
            </tr>
            
               <tr>
               <div>
                <input type="text" name="email" required>
                <label>�̸���</label>
                <span></span>
                </div>
                
            </tr>
          
            <tr>
               <div>
                <input type="text" name="pwd1" required>
                <label>��й�ȣ</label>
                <span></span>
                </div>
                
            </tr>
            
             <tr>
               <div>
                <input type="text" name="pwd2" required>
                <label>��й�ȣ Ȯ��</label>
                <span></span>
                </div>
                
            </tr>
            
            
            
          
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>

 

            <tr>
                <td colspan="2">

                    <!-- ���� ��ư�� ������ post_read_send.jsp�� ����Ǹ�, -->
                    <!-- submit ������ button�� ����, post ������� ���� ���� -->
                    <button type="submit">����</button>
                    <!-- ������� ��ư�� ������ post_list.jsp�� ����� -->
                   
                  
                </td>
            </tr>
            </div>
        </table>
    </form>
</body>
</html>