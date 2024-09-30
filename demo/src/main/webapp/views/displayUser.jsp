<%@ page import="com.example.demo.UserData" %><%--
  Created by IntelliJ IDEA.
  User: LAPTOP88
  Date: 9/27/2024
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin người dùng</title>
</head>
<body>
<h1>Thông tin người dùng</h1>

<p>ID: <%= ((UserData) request.getAttribute("user")).getId() %></p>
<p>Tên: <%= ((UserData) request.getAttribute("user")).getName() %></p>
<p>Email: <%= ((UserData) request.getAttribute("user")).getEmail() %></p>
<p>Tuổi: <%= ((UserData) request.getAttribute("user")).getAge() %></p>

</body>
</html>

