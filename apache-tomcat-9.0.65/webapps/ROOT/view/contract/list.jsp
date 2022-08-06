<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/06/22
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            <h2>Manage <b>Contract</b></h2>
        </div>
        <div class="col-sm-6">
            <a href="add.jsp" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                <span>Add New Contract</span></a>
        </div>
    </div>
</div>
<div class="table-responsive p-0 m-0 w-100">
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Service</th>
            <th>Customer Name</th>
            <th>Start Day</th>
            <th>End Day</th>
            <th>Deposits</th>
            <th>Total Money</th>
            <th>Accompanying Services</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Room Twins01</td>
            <td>Nguyễn Thị Hào</td>
            <td>08-12-2020</td>
            <td>08-12-2020</td>
            <td>đ0</td>
            <td>đ1,000,000</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#editEmployeeModal">
                    <i class="material-icons">&#xE147;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#deleteServiceModal">
                    List Of Included Services
                </button>
            </td>
        </tr>
        <tr>
            <td>1</td>
            <td>Room Twins01</td>
            <td>Nguyễn Thị Hào</td>
            <td>08-12-2020</td>
            <td>08-12-2020</td>
            <td>đ0</td>
            <td>đ1,000,000</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#editEmployeeModal">
                    <i class="material-icons">&#xE147;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#deleteServiceModal">
                    List Of Included Services
                </button>
            </td>
        </tr>
        <tr>
            <td>1</td>
            <td>Room Twins01</td>
            <td>Nguyễn Thị Hào</td>
            <td>08-12-2020</td>
            <td>08-12-2020</td>
            <td>đ0</td>
            <td>đ1,000,000</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#editEmployeeModal">
                    <i class="material-icons">&#xE147;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#deleteServiceModal">
                    List Of Included Services
                </button>
            </td>
        </tr>
        <tr>
            <td>1</td>
            <td>Room Twins01</td>
            <td>Nguyễn Thị Hào</td>
            <td>08-12-2020</td>
            <td>08-12-2020</td>
            <td>đ0</td>
            <td>đ1,000,000</td>
            <td>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#editEmployeeModal">
                        <i class="material-icons">&#xE147;</i>
                    </button>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#deleteServiceModal">
                        List Of Included Services
                    </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="modal fade" id="deleteServiceModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
