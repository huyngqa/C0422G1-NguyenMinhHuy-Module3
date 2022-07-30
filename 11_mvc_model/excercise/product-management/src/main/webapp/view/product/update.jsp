<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/29/22
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <a href="/products">Quay về trang chủ</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Mã sản phẩm: </td>
                <td>${product.productId}</td>
            </tr>
            <tr>
                <td>Tên sản phẩm: </td>
                <td><input type="text" name="name" id="name" value="${product.productName}"></td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td><input type="number" name="price" id="price" value="${product.price}"></td>
            </tr>
            <tr>
                <td>Mô tả: </td>
                <td><input type="text" name="description" id="description" value="${product.description}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Chỉnh sửa"></td>
            </tr>
        </table>
        <c:if test="${mess != null}">
            <p>${mess}</p>
        </c:if>
    </fieldset>
</form>
</body>
</html>
