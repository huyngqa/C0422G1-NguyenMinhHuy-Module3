<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/10/22
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/list-style.css">
    <link rel="stylesheet" href="resources/datatables/css/dataTables.bootstrap5.min.css">
  </head>
  <body>
  <%@ include file="view/include/header.jsp"%>
  <div class="table-title w-100 m-0">
    <div class="row">
      <div class="col-sm-6">
        <h2>Manage <b>Subject</b></h2>
      </div>
      <div class="col-sm-3">
        <a href="/subject?actionSubject=add" class="btn btn-success" data-toggle="modal"><i
                class="material-icons">&#xE147;</i>
          <span>Add New Customer</span></a>
      </div>
    </div>
  </div>
  <div class="table-responsive p-0 m-0 w-100">
    <table id="tableSubject" class="table">
      <thead>
      <tr>
        <th>STT</th>
        <th>Tiêu đề</th>
        <th>Loại bài học</th>
        <th>Độ khó</th>
        <th>Module</th>
        <th>Link bài học</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
              <c:forEach items="${subjects}" var="subject" varStatus="status">
                  <tr>
                      <td>${status.count}</td>
                      <td>${subject.title}</td>
                      <td>${subject.typeSubject}</td>
                      <td>${subject.level}</td>
                      <td>${subject.module}</td>
                      <td>${subject.linkSubject}</td>
                      <td>
                          <a href="#" class="btn btn-primary text-light"
                             data-toggle="modal"><i
                                  class="material-icons"
                                  data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                          <button type="button" onclick="displaySubjectInModal('${subject.subjectId}','${subject.title}')"
                                  class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteModal">
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

  <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <form action="/subject?actionSubject=delete" method="post">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <input type="text" hidden id="deleteId" name="deleteId">
            Bạn có muốn xoá bài học: <span id="deleteName"></span>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Delete</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script>
    function displaySubjectInModal(id, title) {
      document.getElementById("deleteId").value = id;
      document.getElementById("deleteName").innerText = title;
    }
  </script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="resources/jquery/jquery-3.5.1.min.js"></script>
  <script src="resources/datatables/js/jquery.dataTables.min.js"></script>
  <script src="resources/datatables/js/dataTables.bootstrap5.min.js"></script>
  <script>
    $(document).ready(function() {
      $('#tableSubject').dataTable( {
        "dom": 'lrtip',
        "lengthChange": false,
        "pageLength": 5
      } );
    } );
  </script>
  </body>
</html>
