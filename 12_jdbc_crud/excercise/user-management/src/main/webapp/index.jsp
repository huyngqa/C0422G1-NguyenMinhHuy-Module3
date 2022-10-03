<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/01/22
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>User Management</h1>
  <h2>
    <a href="/users?action=create">Add New User</a>
  </h2>
  <form action="/users?action=find" method="post">
    <input type="text" placeholder="Nhập quốc gia muốn tìm" name="country">
    <button>Tìm kiếm</button>
  </form>
  <div align="center">
    <table border="1" cellpadding="5">
      <caption><h2>List of Users</h2></caption>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
        <th>Actions</th>
      </tr>
      <c:forEach items="${listUser}" var="user" >
        <tr>
          <td>${user.id}</td>
          <td>${user.name}</td>
          <td>${user.email}</td>
          <td>${user.country}</td>
          <td>
            <a href="/users?action=edit&id=${user.id}">Edit</a>
            <a href="/users?action=delete&id=${user.id}">Delete</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </div>
  <a href="/users?action=sort">Sắp xếp theo tên</a>
  </body>
</html>
