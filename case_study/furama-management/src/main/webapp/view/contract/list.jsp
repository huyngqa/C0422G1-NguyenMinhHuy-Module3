<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/06/22
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            <h2>Manage <b>Contract</b></h2>
        </div>
        <div class="col-sm-6">
            <button type="button" class="btn btn-primary bg-success" data-bs-toggle="modal" data-bs-target="#addModal">
                <i class="material-icons">&#xE147;</i>
                <span>Add New Contract</span>
            </button>
        </div>
    </div>
</div>
<div class="table-responsive p-0 m-0 w-100">
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Service</th>
            <th>Customer Name</th>
            <th>Start Day</th>
            <th>End Day</th>
            <th>Deposits</th>
            <th>Total Money</th>
            <th>Accompanying Services</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Room Twins01</td>
            <td>Nguyễn Thị Hào</td>
            <td>08-12-2020</td>
            <td>08-12-2020</td>
            <td>đ0</td>
            <td>đ1,000,000</td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#addDetail">
                    <i class="material-icons">&#xE147;</i>
                </button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#accompanyingServices">
                    List Of Included Services
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

<div class="modal fade" id="addDetail" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="detailModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="">
                    <table class="table table-striped">
                        <tr>
                            <th>Name of service included</th>
                            <th>Unit</th>
                            <th>Price</th>
                            <th>Amount</th>

                        </tr>
                        <tr>
                            <td><input type="checkbox"> Karaoke</td>
                            <td>House</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"> Thuê xe máy</td>
                            <td>House</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox"> Thuê xe đạp</td>
                            <td>House</td>
                            <td>100000</td>
                            <td><input style="width: 70px" type="number"></td>
                        </tr>

                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Add</button>
            </div>
        </div>
    </div>
</div>

<%--modal xem chi tiet--%>
<div class="modal fade" id="accompanyingServices" tabindex="-1" aria-labelledby="accompanyingServicesModalLabel" aria-hidden="true">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="accompanyingServicesModalLabel">Accompanying Services</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body container-fluid">
                <table class="table table-striped">
                    <tr>
                        <th>Name of service included</th>
                        <th>Unit</th>
                        <th>Price</th>
                        <th>Amount</th>
                    </tr>
                    <tr>
                        <td>Karaoke</td>
                        <td>House</td>
                        <td>100000</td>
                        <td>1</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Modal add -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">ADD CONTRACT</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body container-fluid">

                <div class="container  mt-2 p-2 mb-2" style="border: 1px solid grey; border-radius: 15px">
                    <form class="row" action="" method="post">
                        <div class="col-md-12">
                            <label for="startday" class="form-label">Start Day </label>
                            <input type="date" class="form-control" id="startday" name="startday">
                        </div>
                        <div class="col-md-12">
                            <label for="endday" class="form-label">End Day </label>
                            <input type="date" class="form-control" id="endday" name="endday">
                        </div>

                        <div class="col-md-12">
                            <label for="deposit" class="form-label">Tiền đặt cọc</label>
                            <input type="number" class="form-control" id="deposit" name="deposit">
                        </div>
                        <div class="col-md-12">
                            <label for="total" class="form-label">Total Amount</label>
                            <input type="number" readonly class="form-control" id="total" name="total">
                        </div>

                        <div class="col-md-12">
                            <label class="form-label">Customer </label>
                            <select name="customerName" class="form-select">
                                <option value="None">Choose Customer</option>
                                <option value="1">Gold</option>
                                <option value="2">Platinium</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <label class="form-label">Service</label>
                            <select name="serviceName" class="form-select">
                                <option value="None">Choose Service</option>
                                <option value="1">Room</option>
                                <option value="2">House</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <label class="form-label">Service includes</label>
                            <button type="button" class="btn btn-primary mt-2 mb-2"
                                    data-bs-target="#" onclick="showService()">
                                +
                            </button>

                            <table class="table table-striped" id="tableFacilityContract" style="display: none;">
                                <tr>
                                    <th>Name Service Include</th>
                                    <th>Unit</th>
                                    <th>Price</th>
                                    <th>Amount</th>
                                    <th>
                                        <button style="display: none" type="button" class="btn btn-danger"
                                                data-bs-target="#" id="buttonHide"
                                                onclick="hideAttachFacility()">
                                            x
                                        </button>
                                    </th>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"> Karaoke</td>
                                    <td>House</td>
                                    <td>100000</td>
                                    <td><input style="width:50px" type="number"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"> Thuê xe máy</td>
                                    <td>House</td>
                                    <td>100000</td>
                                    <td><input style="width: 50px" type="number"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"> Thuê xe đạp</td>
                                    <td>House</td>
                                    <td>100000</td>
                                    <td><input style="width: 50px" type="number"></td>
                                </tr>

                            </table>

                        </div>
                        <div class="col-12  mt-2 d-flex justify-content-end">
                            <button type="button" class="btn btn-secondary me-3" data-bs-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-warning">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

<%@ include file="../include/footer.jsp" %>
<script>
    function showService() {
        document.getElementById("tableFacilityContract").style.display = 'block'
        document.getElementById("buttonHide").style.display = 'block'
    }
    function hideAttachFacility() {
        document.getElementById("tableFacilityContract").style.display = 'none'
        document.getElementById("buttonHide").style.display = 'none'
    }
</script>
<script src="../../resources/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
</body>
</html>
