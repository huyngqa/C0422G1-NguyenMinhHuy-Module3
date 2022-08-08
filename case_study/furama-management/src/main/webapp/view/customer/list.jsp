<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/22
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Furama</title>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../resources/css/list-style.css">
    <link rel="stylesheet" href="../../resources/datatables/css/dataTables.bootstrap5.min.css">
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="table-title w-100 m-0">
    <div class="row">
        <div class="col-sm-6">
            <h2>Manage <b>Customer</b></h2>
        </div>
        <div class="col-sm-6">
            <a href="/customer?actionCustomer=add" class="btn btn-success" data-toggle="modal"><i
                    class="material-icons">&#xE147;</i>
                <span>Add New Customer</span></a>
        </div>
    </div>
</div>
<div class="table-responsive p-0 m-0 w-100">
    <table id="tableCustomer" class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Type Customer</th>
            <th>Name</th>
            <th>Date of birth</th>
            <th>Gender</th>
            <th>ID Card</th>
            <th>Phone number</th>
            <th>Email</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customers}" var="customer">
            <tr>
                <td>${customer.personId}</td>
                <td>${customer.typeCustomerName.typeCustomerName}</td>
                <td>${customer.name}</td>
                <td>${customer.dateOfBirth}</td>
                <c:if test="${customer.gender}">
                    <td>Nam</td>
                </c:if>
                <c:if test="${!customer.gender}">
                    <td>Nữ</td>
                </c:if>
                <td>${customer.identityCardNumber}</td>
                <td>${customer.tel}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                    <a href="/customer?actionCustomer=edit&id=${customer.personId}" class="btn btn-primary text-light"
                       data-toggle="modal"><i
                            class="material-icons"
                            data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <button type="button" onclick="displayCustomerInModal('${customer.personId}','${customer.name}')"
                            class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteCustomerModal">
                        <i class="material-icons"
                           data-toggle="tooltip"
                           title="Delete">&#xE872;</i>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<div class="modal fade" id="deleteCustomerModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/customer?actionCustomer=delete" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden id="deleteId" name="deleteId">
                    Do you want to delete a customer: <span id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
<%@ include file="../include/footer.jsp" %>
<script>
    function displayCustomerInModal(id, name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;
    }
</script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="../../resources/jquery/jquery-3.5.1.min.js"></script>
<script src="../../resources/datatables/js/jquery.dataTables.min.js"></script>
<script src="../../resources/datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableCustomer').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        } );
    } );
</script>
</body>
</html>
