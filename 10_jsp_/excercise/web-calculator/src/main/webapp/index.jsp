<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/28/22
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
    <form method="post" action="/calculate">
        <label>First operand: </label>
        <input type="number" name="num1">
        <br>
        <label>Operator: </label>
        <select name="operator">
            <option value="+">Addition</option>
            <option value="-">Subtraction</option>
            <option value="*">Multiplication</option>
            <option value="/">Division</option>
        </select>
        <br>
        <label>Second operand: </label>
        <input type="number" name="num2">
        <br>
        <button>Calculate</button>
    </form>
</body>
</html>
