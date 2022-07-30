<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/30/22
  Time: 12:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Xoá sản phẩm</h1>
<p>
    <a href="/customers">Quay về trang chủ</a>
</p>
<form method="post">
    <h3>Bạn có muốn xoá không?</h3>
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Mã sản phẩm: </td>
                <td>${product.productId}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${product.productName}</td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>${product.price}</td>
            </tr>
            <tr>
                <td>Address: </td>
                <td>${product.description}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Xoá"></td>
                <td><a href="/products">Quay về trang chủ</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
