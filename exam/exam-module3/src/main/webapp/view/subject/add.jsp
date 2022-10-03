<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/11/22
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../include/header.jsp"%>
<div class="container-fluid">
    <h3 class="text-black-">Thêm mới bài học</h3>
    <form class="row g-3" action="" method="post">
        <div class="col-md-12">
            <label for="name" class="form-label">Tiêu đề</label>
            <input type="text" class="form-control" id="name" name="title">
<%--            <p class="text-danger">${nameErr}</p>--%>
        </div>
        <div class="col-md-12">
            <label class="form-label">Loại bài học</label>
            <select name="subject_type" class="form-select" id="subject_type">
                <c:forEach var="type" items="${typeSubjects}">
                    <option value="${type.typeSubjectId}">${type.typeSubjectName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-12">
            <label for="level" class="form-label">Độ khó</label>
            <select name="level" id="level" class="form-select">
                <c:forEach var="level" items="${levels}">
                    <option value="${level.levelId}">${level.levelName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-12">
            <label for="module" class="form-label">Module</label>
            <select name="level" id="module" class="form-select">
                <c:forEach var="module" items="${modules}">
                    <option value="${module.moduleId}">${module.moduleId}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-12 " id="sv-free">
            <label for="link_bai_hoc" class="form-label">Link</label>
            <input type="text" class="form-control" id="link_bai_hoc" name="link_bai_hoc">
        </div>

        <div class="col-12 ">
            <button type="submit" class="btn btn-primary">Thêm mới</button>
        </div>
    </form>
    <c:if test="${message != null}" >
        <p>${message}</p>
    </c:if>
</div>
<script src="../../resources/js/bootstrap.min.js"></script>
</body>
</html>
