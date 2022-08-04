<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/04/22
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<div class="table-title p-0 m-0 w-100">
    <div class="row">
        <div class="col-sm-6">
            <h2>Manage <b>Employees</b></h2>
        </div>
        <div class="col-sm-6">
            <a href="add.jsp" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>
            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
        </div>
    </div>
</div>
<div class="table-responsive p-0 m-0 w-100">
<table class="table">

    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Date of birth</th>
        <th>ID Card</th>
        <th>Salary</th>
        <th>Phone number</th>
        <th>Email</th>
        <th>Address</th>
        <th>Position</th>
        <th>Education Degree</th>
        <th>Division</th>
        <th>User Name</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Kh001</td>
        <td>Thomas Hardy</td>
        <td>20-02-1999</td>
        <td>0394827123</td>
        <td>10000000</td>
        <td>09374852133</td>
        <td>thomashardy@mail.com</td>
        <td>Nguyen Tat Thanh Street</td>
        <td>Lễ tân</td>
        <td>Cao đẳng</td>
        <td>Villa</td>
        <td>thomas123</td>
        <td>
            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
        </td>
    </tr>
    <tr>
        <td>Kh002</td>
        <td>Dominique Perrier</td>
        <td>12-12-2001</td>
        <td>02947261242</td>
        <td>10000000</td>
        <td>09846213452</td>
        <td>dominiqueperrier@mail.com</td>
        <td>Nguyen Tat Thanh Street</td>
        <td>Phục vụ</td>
        <td>Cao đẳng</td>
        <td>Villa</td>
        <td>perrier123</td>
        <td>
            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
        </td>
    </tr>
    <tr>
        <td>Kh003</td>
        <td>Nguyễn Minh Huy</td>
        <td>20-12-2000</td>
        <td>201796508</td>
        <td>10000000000</td>
        <td>0935507495</td>
        <td>huynguqa@mail.com</td>
        <td>Nguyen Tat Thanh Street</td>
        <td>Giám đốc</td>
        <td>Tiến sĩ</td>
        <td>Villa</td>
        <td>huydeptrai123</td>
        <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
        </td>
    </tr>
    <tr>
        <td>Kh004</td>
        <td>Nguyễn Văn Mạnh</td>
        <td>20-12-2000</td>
        <td>201796508</td>
        <td>10000000000</td>
        <td>0935507495</td>
        <td>huynguqa@mail.com</td>
        <td>Nguyen Tat Thanh Street</td>
        <td>Giám đốc</td>
        <td>Tiến sĩ</td>
        <td>Villa</td>
        <td>huydeptrai123</td>
        <td>
            <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
            <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
        </td>
    </tr>
    </tbody>
</table>

</div>
<%--            <div class="clearfix">--%>
<%--                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>--%>
<%--                <ul class="pagination">--%>
<%--                    <li class="page-item disabled"><a href="#">Previous</a></li>--%>
<%--                    <li class="page-item"><a href="#" class="page-link">1</a></li>--%>
<%--                    <li class="page-item"><a href="#" class="page-link">2</a></li>--%>
<%--                    <li class="page-item active"><a href="#" class="page-link">3</a></li>--%>
<%--                    <li class="page-item"><a href="#" class="page-link">4</a></li>--%>
<%--                    <li class="page-item"><a href="#" class="page-link">5</a></li>--%>
<%--                    <li class="page-item"><a href="#" class="page-link">Next</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Delete Employee</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete these Records?</p>
                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-danger" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

</body>
</html>
