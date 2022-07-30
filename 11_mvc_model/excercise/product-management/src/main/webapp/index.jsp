<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/29/22
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <a href="/products?action=create">Thêm mới sản phẩm</a>
    <br>
    <form action="/products" method="post">
        <label>Tìm kiếm sản phẩm: </label>
        <input type="text" name="product-name" placeholder="Nhập tên sản phẩm">
        <button>Tìm</button>
    </form>
    <table border="1">
        <tr>
            <th>STT</th>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Giá sản phẩm</th>
            <th>Mô tả sản phẩm</th>
            <th colspan="3"></th>
        </tr>
        <c:forEach var="product" items="${products}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${product.productId}</td>
                <td>${product.productName}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td><a href="/products?action=details&id=${product.productId}">Chi tiết sản phẩm</a></td>
                <td><a href="/products?action=update&id=${product.productId}">Sửa</a></td>
                <td><a href="/products?action=delete&id=${product.productId}">Xoá</a></td>
<%--                <td>--%>
<%--                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">--%>
<%--                        Xoá--%>
<%--                    </button>--%>
<%--                    <form action="" method="get">--%>
<%--                    <!-- Modal -->--%>
<%--                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--                        <div class="modal-dialog">--%>
<%--                            <div class="modal-content">--%>
<%--                                <div class="modal-header">--%>
<%--                                    <h5 class="modal-title" id="exampleModalLabel">Bạn có muốn xoá?</h5>--%>
<%--                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                                </div>--%>
<%--                                <div class="modal-footer">--%>
<%--                                    <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>--%>
<%--                                    <button type="submit" class="btn btn-primary">Có</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    </form>--%>
<%--                </td>--%>
            </tr>
        </c:forEach>
    </table>
    <c:if test="${mess!=null}">
        <p>${mess}</p>
    </c:if>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
