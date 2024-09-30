<%--
  Created by IntelliJ IDEA.
  User: LAPTOP88
  Date: 9/27/2024
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="display-discount" method="post">
    <label>Product Description:</label>
    <input type="text" name="description" /><br/><br/>

    <label>Price:</label>
    <input type="number" name="price" /><br/><br/>

    <label>Discount Percent:</label>
    <input type="number" name="discountPercent" /><br/><br/>

    <input type="submit" value="Calculate Discount" />
</form>
</body>
</html>

