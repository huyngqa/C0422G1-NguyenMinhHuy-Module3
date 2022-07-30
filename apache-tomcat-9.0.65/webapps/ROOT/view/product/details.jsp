<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/29/22
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <a href="/products">Back to customer list</a>
</p>
    <table>
        <tr>
            <td>Mã sản phẩm: </td>
            <td>${product.productId}</td>
        </tr>
        <tr>
            <td>Tên sản phẩm: </td>
            <td>${product.productName}</td>
        </tr>
        <tr>
            <td>Giá: </td>
            <td>${product.price}</td>
        </tr>
        <tr>
            <td>Mô tả: </td>
            <td>${product.description}</td>
        </tr>
    </table>
</body>
</html>
