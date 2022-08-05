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
  <form class="row g-3" action="" method="post">
    <div class="col-md-12">
      <label for="name" class="form-label">Name Service</label>
      <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="col-md-12">
      <label for="area" class="form-label">Area</label>
      <input type="text" class="form-control" id="area" name="area">
    </div>
    <div class="col-md-12">
      <label for="cost" class="form-label">Cost</label>
      <input type="text" class="form-control" id="cost"  name="cost" >
    </div>
    <div class="col-md-12">
      <label for="inputAddress2" class="form-label">Max people </label>
      <input type="text" class="form-control" id="inputAddress2" name="max_people" >
    </div>
    <div class="col-md-12">
      <label for="inputCity" class="form-label">Rent Type</label>
      <input type="text" class="form-control" id="inputCity" name="rent_type_id">
    </div>
    <div class="col-md-12">
      <label class="form-label">Service Type</label>
      <select name=""  class="form-select" onchange="showService(this)">
        <option value="Villa" >Villa</option>
        <option value="House" >House</option>
        <option value="Room" >Room</option>
      </select>
    </div>
    <div class="col-md-12 " id="standard" style="display: block">
      <label for="standard_room" class="form-label">Standard Room </label>
      <input type="text" class="form-control" id="standard_room" name="standard_room">
    </div>

    <div class="col-md-12 " id="convenience" style="display: block">
      <label for="description_other_convenience" class="form-label">Description other convenience</label>
      <input type="text" class="form-control" id="description_other_convenience" name="description_other_convenience">
    </div>

    <div class="col-md-12 " id="pool" style="display: block">
      <label for="pool_area" class="form-label">Pool area  </label>
      <input type="text" class="form-control" id="pool_area" name="pool_area">
    </div>

    <div class="col-md-12" id="floors" style="display: block">
      <label for="number_of_floors" class="form-label">Number of floors </label>
      <input type="text" class="form-control" id="number_of_floors" name="number_of_floors">
    </div>

    <div class="col-md-12 " id="sv-free" style="display: none">
      <label for="service_free" class="form-label">Service free </label>
      <input type="text" class="form-control" id="service_free" name="facility_free">
    </div>

    <div class="col-12 ">
      <button type="submit" class="btn btn-primary">Add New</button>
    </div>
  </form>
</div>
<%@ include file="../include/footer.jsp" %>
<script src="../../resources/js/list-service.js"></script>
<script src="../../resources/js/bootstrap.min.js"></script>
</body>
</html>
