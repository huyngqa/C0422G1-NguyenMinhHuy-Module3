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
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="table-title w-100 m-0">
    <div class="row">
        <div class="col-sm-6">
            <h2>Manage <b>Customer</b></h2>
        </div>
        <div class="col-sm-6">
            <a href="add.jsp" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                <span>Add New Customer</span></a>
        </div>
    </div>
</div>
<div class="table-responsive p-0 m-0 w-100">
    <table class="table">
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
        <tr>
            <td>KH001</td>
            <td>Diamond</td>
            <td>Nguyễn Minh Huy</td>
            <td>20-02-1999</td>
            <td>Nam</td>
            <td>0394827123</td>
            <td>09374852133</td>
            <td>thomashardy@mail.com</td>
            <td>Nguyen Tat Thanh Street</td>
            <td>
                <a href="#editEmployeeModal" class="btn btn-primary text-light" data-toggle="modal"><i class="material-icons"
                                                                                                       data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteCustomerModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        <tr>
            <td>KH001</td>
            <td>Diamond</td>
            <td>Nguyễn Minh Huy</td>
            <td>20-02-1999</td>
            <td>Nam</td>
            <td>0394827123</td>
            <td>09374852133</td>
            <td>thomashardy@mail.com</td>
            <td>Nguyen Tat Thanh Street</td>
            <td>
                <a href="#editEmployeeModal" class="btn btn-primary text-light" data-toggle="modal"><i class="material-icons"
                                                                                                       data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteCustomerModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        <tr>
            <td>KH001</td>
            <td>Diamond</td>
            <td>Nguyễn Minh Huy</td>
            <td>20-02-1999</td>
            <td>Nam</td>
            <td>0394827123</td>
            <td>09374852133</td>
            <td>thomashardy@mail.com</td>
            <td>Nguyen Tat Thanh Street</td>
            <td>
                <a href="#editEmployeeModal" class="btn btn-primary text-light" data-toggle="modal"><i class="material-icons"
                                                                                                       data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteCustomerModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        <tr>
            <td>KH001</td>
            <td>Diamond</td>
            <td>Nguyễn Minh Huy</td>
            <td>20-02-1999</td>
            <td>Nam</td>
            <td>0394827123</td>
            <td>09374852133</td>
            <td>thomashardy@mail.com</td>
            <td>Nguyen Tat Thanh Street</td>
            <td>
                <a href="#editEmployeeModal" class="btn btn-primary text-light" data-toggle="modal"><i class="material-icons"
                                                                                                       data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteCustomerModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="modal fade" id="deleteCustomerModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<%@ include file="../include/footer.jsp" %>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
</body>
</html>
