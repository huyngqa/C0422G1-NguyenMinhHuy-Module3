<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/27/22
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <form action="/display-discount" method="post">
        <label>Mô tả của sản phẩm</label>
        <br>
        <input type="text" name="description" >
        <br>
        <label>Giá niêm yết</label>
        <br>
        <input type="number" name="price">
        <br>
        <label>Tỉ lệ chiết khẩu(%)</label>
        <br>
        <input type="number" name="discount">
        <br>
        <button>Tính chiết khấu</button>
    </form>
</body>
</html>
