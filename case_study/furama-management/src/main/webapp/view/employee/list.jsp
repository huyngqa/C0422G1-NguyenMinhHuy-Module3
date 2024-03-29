<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/04/22
  Time: 4:15 PM
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
            <h2>Manage <b>Employees</b></h2>
        </div>
        <div class="col-sm-6">
            <button type="button" class="btn btn-primary bg-success" data-bs-toggle="modal" data-bs-target="#addEmployeeModal">
                <i class="material-icons">&#xE147;</i>
                <span>Add New Employee</span>
            </button>
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
            <td>NV001</td>
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
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip" title="Edit">&#xE254;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        <tr>
            <td>NV002</td>
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
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip" title="Edit">&#xE254;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        <tr>
            <td>NV003</td>
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
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip" title="Edit">&#xE254;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        <tr>
            <td>NV004</td>
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
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip" title="Edit">&#xE254;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteEmployeeModal">
                    <i class="material-icons"
                       data-toggle="tooltip"
                       title="Delete">&#xE872;</i>
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<%--modal thêm mới--%>
<div class="modal fade" id="addEmployeeModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">Add new employee</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex justify-content-center mt-5">
                    <form class="w-50">
                        <div class="mb-3">
                            <label for="inputName" class="form-label">Email address</label>
                            <input type="text" class="form-control" id="inputName">
                        </div>
                        <div class="mb-3">
                            <label for="inputBirthDay" class="form-label">Birth Day</label>
                            <input type="date" class="form-control" id="inputBirthDay">
                        </div>
                        <div class="mb-3">
                            <label for="inputIdCard" class="form-label">ID Card</label>
                            <input type="text" class="form-control" id="inputIdCard">
                        </div>
                        <div class="mb-3">
                            <label for="inputSalary" class="form-label">Salary</label>
                            <input type="text" class="form-control" id="inputSalary">
                        </div>
                        <div class="mb-3">
                            <label for="inputPhone" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" id="inputPhone">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="inputAddress" class="form-label">Address</label>
                            <input type="text" class="form-control" id="inputAddress">
                        </div>
                        <div class="mb-3">
                            <label for="inputPosition" class="form-label">Position</label>
                            <div class="mb-3">
                                <select class="form-select" id="inputPosition" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">Lễ tân</option>
                                    <option value="2">Giám đốc</option>
                                    <option value="3">Sales</option>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="inputEducation" class="form-label">Education Degree</label>
                            <div class="mb-3">
                                <select class="form-select" id="inputEducation" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">Đại học</option>
                                    <option value="2">Cao đẳng</option>
                                    <option value="3">Trung cấp</option>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="inputDivision" class="form-label">Division</label>
                            <div class="mb-3">
                                <select class="form-select" id="inputDivision" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">Villa</option>
                                    <option value="2">House</option>
                                    <option value="3">Room</option>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="inputUser" class="form-label">User Name</label>
                            <input type="text" class="form-control" id="inputUser">
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<%--Modal edit employee--%>
<div class="modal fade" id="editEmployeeModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editModalLabel">Edit Employee</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="d-flex justify-content-center mt-5">
                    <form class="w-50">
                        <div class="mb-3">
                            <label for="editName" class="form-label">Email address</label>
                            <input type="text" class="form-control" id="editName">
                        </div>
                        <div class="mb-3">
                            <label for="editBirthDay" class="form-label">Birth Day</label>
                            <input type="date" class="form-control" id="editBirthDay">
                        </div>
                        <div class="mb-3">
                            <label for="editIdCard" class="form-label">ID Card</label>
                            <input type="text" class="form-control" id="editIdCard">
                        </div>
                        <div class="mb-3">
                            <label for="editSalary" class="form-label">Salary</label>
                            <input type="text" class="form-control" id="editSalary">
                        </div>
                        <div class="mb-3">
                            <label for="editPhone" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" id="editPhone">
                        </div>
                        <div class="mb-3">
                            <label for="editEmail1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="editEmail1" aria-describedby="editEmailHelp">
                            <div id="editEmailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="editAddress" class="form-label">Address</label>
                            <input type="text" class="form-control" id="editAddress">
                        </div>
                        <div class="mb-3">
                            <label for="editPosition" class="form-label">Position</label>
                            <div class="mb-3">
                                <select class="form-select" id="editPosition" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">Lễ tân</option>
                                    <option value="2">Giám đốc</option>
                                    <option value="3">Sales</option>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="editEducation" class="form-label">Education Degree</label>
                            <div class="mb-3">
                                <select class="form-select" id="editEducation" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">Đại học</option>
                                    <option value="2">Cao đẳng</option>
                                    <option value="3">Trung cấp</option>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="editDivision" class="form-label">Division</label>
                            <div class="mb-3">
                                <select class="form-select" id="editDivision" aria-label="Default select example">
                                    <option selected>Open this select menu</option>
                                    <option value="1">Villa</option>
                                    <option value="2">House</option>
                                    <option value="3">Room</option>
                                </select>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="editUser" class="form-label">User Name</label>
                            <input type="text" class="form-control" id="editUser">
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<%--Modal delete employee--%>
<div class="modal fade" id="deleteEmployeeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
