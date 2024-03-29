<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/05/22
  Time: 2:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Furama</title>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div class="container-fluid">
    <h3 class="text-black-">Edit Service</h3>
    <form class="row g-3" method="post">
        <div class="col-md-12">
            <label for="name" class="form-label">Name Service</label>
            <input type="text" class="form-control" id="name" name="name" value="${facility.facilityName}">
            <p class="text-danger">${nameErr}</p>
        </div>
        <div class="col-md-12">
            <label for="area" class="form-label">Area</label>
            <input type="text" class="form-control" id="area" name="area" value="${facility.usableArea}">
        </div>
        <div class="col-md-12">
            <label for="cost" class="form-label">Cost</label>
            <input type="text" class="form-control" id="cost" name="cost" value="${facility.rentalCosts}">
        </div>
        <div class="col-md-12">
            <label for="max_people" class="form-label">Max people </label>
            <input type="text" class="form-control" id="max_people" name="max_people"
                   value="${facility.maximumNumOfPeople}">
        </div>
        <div class="col-md-12">
            <label for="rent_type" class="form-label">Rent Type</label>
            <select name="rent_type" id="rent_type" class="form-select">
                <c:forEach var="rentalType" items="${rentalTypeList}">
                    <c:if test="${rentalType.rentalTypeId == facility.rentalType.rentalTypeId}">
                        <option selected value="${rentalType.rentalTypeId}">${rentalType.rentalTypeName}</option>
                    </c:if>
                    <c:if test="${rentalType.rentalTypeId != facility.rentalType.rentalTypeId}">
                        <option value="${rentalType.rentalTypeId}">${rentalType.rentalTypeName}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-12">
            <label class="form-label">Service Type</label>
            <select name="service_type" class="form-select" id="selectService" onchange="showService(this)">
                <c:forEach var="typeFacility" items="${typeFacilityList}">
                    <c:if test="${typeFacility.typeFacilityId == facility.typeFacility.typeFacilityId}">
                        <option selected
                                value="${typeFacility.typeFacilityId}">${typeFacility.typeFacilityName}</option>
                    </c:if>
                    <c:if test="${typeFacility.typeFacilityId != facility.typeFacility.typeFacilityId}">
                        <option value="${typeFacility.typeFacilityId}">${typeFacility.typeFacilityName}</option>
                    </c:if>
                </c:forEach>
            </select>
        </div>
        <c:if test="${facility.typeFacility.typeFacilityId == 1}">
            <div class="col-md-12 " id="standard" style="display: block">
                <label for="standard_villa" class="form-label">Standard Room </label>
                <input type="text" class="form-control" id="standard_villa" name="standard_room"
                       value="${facility.standardRoom}">
            </div>

            <div class="col-md-12 " id="convenience" style="display: block">
                <label for="description_other_convenience_villa" class="form-label">Description other
                    convenience</label>
                <input type="text" class="form-control" id="description_other_convenience_villa"
                       name="description_other_convenience" value="${facility.descriptionOtherConvenience}">
            </div>

            <div class="col-md-12 " id="pool" style="display: block">
                <label for="pool_area_villa" class="form-label">Pool area </label>
                <input type="text" class="form-control" id="pool_area_villa" name="pool_area"
                       value="${facility.poolArea}">
            </div>

            <div class="col-md-12" id="floors" style="display: block">
                <label for="number_of_floors_villa" class="form-label">Number of floors </label>
                <input type="text" class="form-control" value="${facility.numOfFloor}" id="number_of_floors_villa"
                       name="number_of_floors">
                <p class="text-danger">${floorErr}</p>
            </div>
            <div class="col-md-12 " id="sv-free" style="display: none">
                <label for="service_free_villa" class="form-label">Service free </label>
                <input type="text" class="form-control" id="service_free_villa" name="facility_free">
            </div>
        </c:if>
        <c:if test="${facility.typeFacility.typeFacilityId == 2}">
            <div class="col-md-12 " id="standard" style="display: block">
                <label for="standard_house" class="form-label">Standard Room </label>
                <input type="text" class="form-control" id="standard_house" name="standard_room"
                       value="${facility.standardRoom}">
            </div>

            <div class="col-md-12 " id="convenience" style="display: block">
                <label for="description_other_convenience_house" class="form-label">Description other
                    convenience</label>
                <input type="text" class="form-control" id="description_other_convenience_house"
                       name="description_other_convenience" value="${facility.descriptionOtherConvenience}">
            </div>
            <div class="col-md-12 " id="pool" style="display: block">
                <label for="pool_area_house" class="form-label">Pool area </label>
                <input type="text" class="form-control" id="pool_area_house" name="pool_area">
            </div>
            <div class="col-md-12" id="floors" style="display: block">
                <label for="number_of_floors_house" class="form-label">Number of floors </label>
                <input type="text" class="form-control" value="${facility.numOfFloor}" id="number_of_floors_house"
                       name="number_of_floors">
                <p class="text-danger">${floorErr}</p>
            </div>
            <div class="col-md-12 " id="sv-free" style="display: none">
                <label for="service_free_house" class="form-label">Service free </label>
                <input type="text" class="form-control" id="service_free_house" name="facility_free">
            </div>
        </c:if>
        <c:if test="${facility.typeFacility.typeFacilityId == 3}">
            <div class="col-md-12 " id="standard" style="display: block">
                <label for="standard_room" class="form-label">Standard Room </label>
                <input type="text" class="form-control" id="standard_room" name="standard_room">
            </div>

            <div class="col-md-12 " id="convenience" style="display: block">
                <label for="description_other_convenience_room" class="form-label">Description other
                    convenience</label>
                <input type="text" class="form-control" id="description_other_convenience_room"
                       name="description_other_convenience">
            </div>
            <div class="col-md-12 " id="pool" style="display: block">
                <label for="pool_area_room" class="form-label">Pool area </label>
                <input type="text" class="form-control" id="pool_area_room" name="pool_area">
            </div>
            <div class="col-md-12" id="floors" style="display: block">
                <label for="number_of_floors_room" class="form-label">Number of floors </label>
                <input type="text" class="form-control" id="number_of_floors_room"
                       name="number_of_floors">
                <p class="text-danger">${floorErr}</p>
            </div>
            <div class="col-md-12 " id="sv-free" style="display: none">
                <label for="service_free" class="form-label">Service free </label>
                <input type="text" class="form-control" id="service_free" name="facility_free"
                       value="${facility.facilityFree}">
            </div>
        </c:if>
        <div class="col-12 ">
            <button type="submit" class="btn btn-primary">Edit</button>
        </div>
    </form>
</div>
<%@ include file="../include/footer.jsp" %>
<script>
    function showService(value) {
        let v = value.value;
        switch (v) {
            case "1":
                document.getElementById("standard").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("pool").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("sv-free").style.display = "none";
                break;
            case "2":
                document.getElementById("standard").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("pool").style.display = "none";
                document.getElementById("floors").style.display = "block";
                document.getElementById("sv-free").style.display = "none";
                break;
            case "3":
                document.getElementById("standard").style.display = "none";
                document.getElementById("convenience").style.display = "none";
                document.getElementById("pool").style.display = "none";
                document.getElementById("floors").style.display = "none";
                document.getElementById("sv-free").style.display = "block";
                break;
        }
    }
    window.onload=function (){
        if( document.getElementById("selectService").value =='1'){
            document.getElementById("standard").style.display = "block";
            document.getElementById("convenience").style.display = "block";
            document.getElementById("pool").style.display = "block";
            document.getElementById("floors").style.display = "block";
            document.getElementById("sv-free").style.display = "none";
        }
        if( document.getElementById("selectService").value =='2') {
            document.getElementById("standard").style.display = "block";
            document.getElementById("convenience").style.display = "block";
            document.getElementById("pool").style.display = "none";
            document.getElementById("floors").style.display = "block";
            document.getElementById("sv-free").style.display = "none";
        }
        if( document.getElementById("selectService").value =='3') {
            document.getElementById("standard").style.display = "none";
            document.getElementById("convenience").style.display = "none";
            document.getElementById("pool").style.display = "none";
            document.getElementById("floors").style.display = "none";
            document.getElementById("sv-free").style.display = "block";
        }
    }
</script>
<script src="../../resources/js/bootstrap.min.js"></script>
</body>
</html>
