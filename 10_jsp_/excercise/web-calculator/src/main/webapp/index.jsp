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
    <h1>Simple Calculator</h1>
    <form method="post" action="/calculate">
        <fieldset>
            <legend>Calculator</legend>
            <table>
                <tr>
                    <td>First operand: </td>
                    <td><input name="num1" type="number"/></td>
                </tr>
                <tr>
                    <td>Operator: </td>
                    <td>
                        <select name="operator">
                            <option value="+">Addition</option>
                            <option value="-">Subtraction</option>
                            <option value="*">Multiplication</option>
                            <option value="/">Division</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Second operand: </td>
                    <td><input name="num2" type="number"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Calculate"/></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
