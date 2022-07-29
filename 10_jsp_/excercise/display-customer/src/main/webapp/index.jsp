<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/28/22
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        h3 {
            text-align: center;
        }
        tr th {
            text-align: left;
        }
        td {
            border-bottom: 1px solid aquamarine;
            padding: 10px;
        }
        table {
            width: 100%;
        }
        img {
            width: 100px;
            height: 200px;
        }
    </style>
</head>
<body>
    <h3>Danh sách khách hàng</h3>
    <table>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.getName()}</td>
                <td>${customer.getDate()}</td>
                <td>${customer.getAddress()}</td>
                <td><img src="${customer.getImage()}" alt="anh-ca-nhan"></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
