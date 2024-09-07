<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
    	width:50%;
    	height:80%;
        background-color: white;
        padding: 30px 40px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2,p {
        color: #333;
        text-align:center;
        margin-top:10px;
    }
    .alert {
    	text-align:center;
        color: red;
    }
    .alertdanger {
    	text-align:center;
        color: red;
    }
 	.submit{
 		margin:10px auto;
 		text-align:center;
 		height:10%;
 		
 	}
    input[type="text"], input[type="password"] {
        width: 100%;
        height:50%;
        padding: 0.5em;
        border: 1px solid #ccc;
        border-radius: 3px;
    }
    input[type="submit"] {
        background-color: blue;
        color: white;
        margin:20px auto;
        padding: 0.5em 1em;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        height:50%;
 		width:50%;
    }
    input[type="submit"]:hover {
        background-color: red;
    }
    a:hover{
    	color:red;
    }
    img{
    	width:20%;
    	height:30%;
    }
    .in{
    	height:9%;
    	margin: 20px;
    }
</style>
</head>
<body>
    
    <form action="/login_register/home" method="POST">
    <img src="https://hcmute.edu.vn/Resources/Images/Logo/Logo%20HCMUTE-Corel-white%20background.jpg">
    <h2>Đăng nhập</h2>
        <c:if test="${alert != null}">
            <h3 class="alert alertdanger">${alert}</h3>
        </c:if>
        <div class="in">
        <label>
        	Tên Tài Khoản:
        </label>
        <input type="text" name="name" placeholder="Username"></div>
        <div class="in">
        <label>
        	Mật khẩu:
        </label>
        <input type="password" name="password" placeholder="Password"></div> 
        <div class="submit"><input type="submit" value="Đăng nhập"></div>
    <p> Nếu bạn chưa có tài khoản trên hệ thống, thì hãy <a href = "register.jsp">Đăng ký</a>
    </form>
</body>
</html>