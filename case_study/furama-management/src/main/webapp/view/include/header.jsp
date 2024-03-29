<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/04/22
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
</head>
<body>

    <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
            <div class="col-auto col-sm-5 col-lg-3 d-flex align-items-center bestel-logo">
                <a class="navbar-brand header-logo" href="/furama">
                    <img src="../../resources/img/logo.png" alt="logo" class="d-inline-block align-text-top img-fluid">
                </a>
            </div>
            <div class="col col-md-auto col-lg-3 d-flex">

            </div>
            <div class="col-sm-3 d-none d-lg-block">
                <div class="header-contact d-flex">
                    <div class="header-contact-icon"></div>
                    <div class="header-contact-txt .fs-5 text">
                        <p>
                            <i class="fa-solid fa-location-dot"></i>
                            1291 Đường Nguyễn Tất Thành, Phường Thanh Khê Đông, Quận Thanh Khê,
                            Tp. Đà Nẵng, Việt Nam </p>
                        <p class="txt-sm">
                            <span>3.0 km</span> từ Sân bay Quốc tế Đà Nẵng </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 d-none d-lg-block">
                <div class="header-contact d-flex">
                    <div class="header-contact-icon"><i class="icon-telephone"></i></div>
                    <div class="header-contact-txt">
                        <p class="txt-lg">
                            <i class="fa-solid fa-phone-arrow-down-left"></i> 0935507495</p>
                    </div>
                </div>
                <div class="header-contact d-flex">
                    <div class="header-contact-icon"><i class="icon-closed-envelope"></i></div>
                    <div class="header-contact-txt">
                        <a href="mailto:huynguqa@gmail.com">
                            <i class="fa-solid fa-circle-envelope"></i> huy đẹp trai </a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <nav class="navbar navbar-expand-lg navbar-light bg-success sticky-top w-100 m-0">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="/furama">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-light" aria-current="page"
                           href="view/employee/list.jsp">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/customer">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/service">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">Contract</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success text-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</body>
</html>
