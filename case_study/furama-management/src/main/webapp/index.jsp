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
</head>
<body>
<%@ include file="view/include/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-sm-12" id="home">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="resources/img/bg1.jpg" class="d-block w-100 img-fluid" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="resources/img/bg2.jpg" class="d-block w-100 img-fluid" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="resources/img/bg3.jpg" class="d-block w-100 img-fluid" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
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
</div>
<%@ include file="view/include/footer.jsp" %>
<script src="https://kit.fontawesome.com/d6e19ea644.js" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
