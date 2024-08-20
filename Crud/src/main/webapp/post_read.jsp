<!DOCTYPE html>
<html>
<head>
<style>

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

div {
  position: relative;
  width: 300px;
  margin-left: 50px;
  margin-top: 100px;
}

input {
  font-size: 15px;
  color: #222222;
  width: 300px;
  border: none;
  border-bottom: solid #aaaaaa 1px;
  padding-bottom: 10px;
  padding-left: 10px;
  position: relative;
  background: none;
  z-index: 5;
}

input::placeholder { color: #aaaaaa; }
input:focus { outline: none; }

span {
  display: block;
  position: absolute;
  bottom: 0;
  left: 0%;  /* right�θ� �ٲ��ָ� �� - �� */
  background-color: #666;
  width: 0;
  height: 2px;
  border-radius: 2px;
  transition: 0.5s;
}

label {
  position: absolute;
  color: #aaa;
  left: 10px;
  font-size: 20px;
  bottom: 8px;
  transition: all .2s;
}

input:focus ~ label, input:valid ~ label {
  font-size: 16px;
  bottom: 40px;
  color: #666;
  font-weight: bold;
}

input:focus ~ span, input:valid ~ span {
  width: 100%;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
    <input type="text" required>
    <label>Name</label>
    <span></span>
</div>
</body>
</html>