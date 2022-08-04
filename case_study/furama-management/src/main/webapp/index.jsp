<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/04/22
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <style>
        @keyframes example {
            0% {
                background-image: url("resources/img/bgh4.jpg");
            }
            25% {
                background-image: url("resources/img/bgh1.jpg");
            }
            50% {
                background-image: url("resources/img/bgh2.jpg");
            }
            100% {
                background-image: url("resources/img/bgh3.jpg");
            }
        }

        #home {
            background-image: url("resources/img/bgh4.jpg");
            background-size: 100%;
            animation-name: example;
            animation-duration: 10s;
            animation-iteration-count: infinite;
        }
        #color-foot {
        }
    </style>
</head>
<body>
<div class="container-fluid">
<div class="row head">
    <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
            <div class="col-auto col-sm-5 col-lg-3 d-flex align-items-center bestel-logo">
                <a class="navbar-brand header-logo" href="#">
                    <img src="resources/img/logo.png" alt="logo" class="d-inline-block align-text-top img-fluid">
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
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-success sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand text-light" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-light" aria-current="page" href="view/employee/list.jsp">Employee</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-light" href="#">Service</a>
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
    <div class="row">
        <div class="col-md-12 col-sm-12" id="home">
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
            <p>main</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-sm-12">
            <h2 style="font-size: 24px;color: #cbbe73;line-height: 36px;text-align: left;font-family:Playfair Display;font-weight:700;font-style:normal" class="vc_custom_heading">
                KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG ẨM THỰC TẠI VIỆT NAM.
            </h2>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="wpb_wrapper"><div class="vc_empty_space" style="height: 32px"><span class="vc_empty_space_inner"></span></div>
                <a href="https://www.youtube.com/watch?v=IjlT_4mvd-c" class="video-btn js-video-btn">
                    <img width="1000" height="754" src="https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg" class="img-fluid" alt="" srcset="https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach.jpg 1000w, https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach-300x226.jpg 300w, https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach-768x579.jpg 768w, https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach-747x563.jpg 747w, https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach-370x279.jpg 370w, https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach-317x239.jpg 317w, https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior_Beach-139x105.jpg 139w" sizes="(max-width: 1000px) 100vw, 1000px">
                </a>
                <div class="vc_empty_space" style="height: 32px"><span class="vc_empty_space_inner"></span></div>
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <div class="wpb_wrapper">
                <p style="text-align: justify;">
                    Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là
                    cửa ngõ đến với 3 di sản văn hoá thế giới: Hội An (20 phút), Mỹ Sơn (90 phút)
                    và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt thự từ hai đến bốn phòng
                    ngủ có hồ bơi riêng đều được trang trí trang nhã, theo phong cách thiết kế truyền
                    thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu nghỉ
                    dưỡng danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng,
                    giới hoàng gia, chính khách, ngôi sao điện ảnh và các nhà lãnh đạo kinh doanh quốc tế.
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="card">
                <div class="card-header bg-success">
                    Furama Resort
                </div>
                <div class="card-body bg-light" id="color-foot">
                    <h5 class="card-title">Thank you so much!</h5>
                    <p class="card-text">Hẹn quý khách vào những ngày tới.</p>
                    <a href="#" class="btn btn-primary">Go home</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
