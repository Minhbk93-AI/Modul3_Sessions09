<%--
  Created by IntelliJ IDEA.
  User: LAPTOP88
  Date: 9/27/2024
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả</title>
</head>
<body>
<h1>Kết quả</h1>
<p>Product Description: <%= request.getAttribute("description") %></p>
<p>Price: <%= request.getAttribute("price") %></p>
<p>Discount Percent: <%= request.getAttribute("discountPercent") %> %</p>
<p>Discount Amount: <%= request.getAttribute("discountAmount") %></p>
<p>Discount Price: <%= request.getAttribute("discountPrice") %></p>
</body>
</html>

