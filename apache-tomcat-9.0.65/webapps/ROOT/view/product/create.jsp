<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/29/22
  Time: 4:30 PM
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
    <a href="/products">Trở về trang chủ</a>
</p>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form method="post">
    <fieldset>
        <legend>Thêm thông tin</legend>
        <table>
            <tr>
                <td>Mã sản phẩm:</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Tên sản phẩm:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Giá:</td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Mô tả:</td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tạo sản phẩm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
