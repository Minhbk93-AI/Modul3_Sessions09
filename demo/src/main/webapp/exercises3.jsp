<%--
  Created by IntelliJ IDEA.
  User: LAPTOP88
  Date: 9/27/2024
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .login-container {
            text-align: center;
            padding: 30px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 30px;
            box-sizing: border-box;
        }
        .btn-submit {
            padding: 10px;
            width: 100%;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 30px;
            cursor: pointer;
        }
        .btn-submit:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>SIGN IN</h2>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="username" required>
        <input type="password" name="password" placeholder="password" required>
        <button type="submit" class="btn-submit">SIGN IN</button>
    </form>
    <!-- Hiển thị thông báo lỗi nếu có -->
    <p style="color: red;">
        <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
    </p>
</div>

</body>
</html>

