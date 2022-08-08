<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/22
  Time: 1:48 AM
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
            <h2>Manage <b>Service</b></h2>
        </div>
        <div class="col-sm-3">
            <form action="/service?actionService=search" method="post">
                <input type="text" name="searchService" placeholder="Enter service name">
                <button type="submit" class="btn btn-success"> Search</button>
            </form>
        </div>
        <div class="col-sm-3">
            <a href="/service?actionService=add" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i>
                <span>Add New Service</span></a>
        </div>
    </div>
</div>
<div class="table-responsive p-0 m-0 w-100">
    <table id="tableFacility" class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Area</th>
            <th>Cost</th>
            <th>Max People</th>
            <th>Rent Type</th>
            <th>Service Type</th>
            <th>Standard Room</th>
            <th>Description Other Convenience</th>
            <th>Pool Area</th>
            <th>Num Of Floor</th>
            <th>Service Free</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="facility" items="${facilities}">
            <tr>
                <td>${facility.facilityId}</td>
                <td>${facility.facilityName}</td>
                <td>${facility.usableArea}</td>
                <td>${facility.rentalCosts}</td>
                <td>${facility.maximumNumOfPeople}</td>
                <td>${facility.rentalType.rentalTypeName}</td>
                <td>${facility.typeFacility.typeFacilityName}</td>
                <c:if test="${facility.typeFacility.typeFacilityId == 1}">
                    <td>${facility.standardRoom}</td>
                    <td>${facility.descriptionOtherConvenience}</td>
                    <td>${facility.poolArea}</td>
                    <td>${facility.numOfFloor}</td>
                    <td>Trống</td>
                </c:if>
                <c:if test="${facility.typeFacility.typeFacilityId == 2}">
                    <td>${facility.standardRoom}</td>
                    <td>${facility.descriptionOtherConvenience}</td>
                    <td>Trống</td>
                    <td>${facility.numOfFloor}</td>
                    <td>Trống</td>
                </c:if>
                <c:if test="${facility.typeFacility.typeFacilityId == 3}">
                    <td>Trống</td>
                    <td>Trống</td>
                    <td>Trống</td>
                    <td>Trống</td>
                    <td>${facility.facilityFree}</td>
                </c:if>
                <td>
                    <a href="/service?actionService=edit&id=${facility.facilityId}" class="btn btn-primary text-light"
                       data-toggle="modal"><i
                            class="material-icons"
                            data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                    <button type="button"
                            onclick="displayCustomerInModal('${facility.facilityId}','${facility.facilityName}')"
                            class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#deleteServiceModal">
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
<c:if test="${message != null}">
    <p>${message}</p>
</c:if>
<div class="modal fade" id="deleteServiceModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/service?actionService=delete" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden id="deleteId" name="deleteId">
                    Do you want to delete a service: <span id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">DELETE</button>
                </div>
            </form>
        </div>
    </div>
</div>
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
    $(document).ready(function () {
        $('#tableFacility').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        });
    });
</script>
</body>
</html>
