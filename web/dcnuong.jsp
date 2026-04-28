<%-- 
    Document   : trangchu
    Created on : Apr 9, 2026, 5:13:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/bootstrap.rtl.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <!-- Lớp chứa -->
        <div class="container">
            <div class="row border">
                <img src="images/banner.jpeg" alt="" style="width: 100%;" class="m-0">
            </div>
            <div class="row border">
                <!-- MAIN MENU -->
                <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color: #5b1412;">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Menu</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="trangchu.jsp">Trang chủ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Giới thiệu</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Tin tức</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Sản phẩm
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Dụng cụ cơ bản</a></li>
                                        <li><a class="dropdown-item" href="#">Dụng cụ nướng</a></li>
                                        <li><a class="dropdown-item" href="#">Dụng cụ trang trí</a></li>
                                        <li><a class="dropdown-item" href="#">Dụng cụ nâng cao</a></li>
                                        <li><a class="dropdown-item" href="#">Dụng cụ hỗ trợ khác</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Liên hệ</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row border">
                <div class="col border p-0">
                    <!-- LEFT MENU -->
                    <div class="list-group m-0">
                        <a href="trangchu.jsp" class="list-group-item list-group-item-action active" aria-current="true" style="background-color: #5b1412;">
                            DANH MỤC
                        </a>
                        <a href="dccoban.jsp" class="list-group-item list-group-item-action">Dụng cụ cơ bản</a>
                        <a href="dcnuong.jsp" class="list-group-item list-group-item-action">Dụng cụ nướng</a>
                        <a href="dctrangtri.jsp" class="list-group-item list-group-item-action">Dụng cụ trang trí</a>
                        <a href="dcnangcao.jsp" class="list-group-item list-group-item-action">Dụng cụ nâng cao</a>
                        <a href="dckhac.jsp" class="list-group-item list-group-item-action">Dụng cụ hỗ trợ khác</a>
                    </div>
                    <!-- Danh mục End-->
                </div>
                <!-- CONTENT -->
                <div class="col-8 border">
                    <div class="row" style="color: #5b1412" style="background-color: "><h3>DANH SÁCH SẢN PHẨM</h3></div>
                    <div class="row">

                        <!-- ===== HÀNG 1 ===== -->
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image11.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Lò nướng bánh</h5><p class="text-danger">2.500.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Lò nướng đối lưu 30l</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image12.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Khuôn bánh tròn</h5><p class="text-danger">75.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Size 18cm</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image13.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Khuôn bánh vuông</h5><p class="text-danger">80.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Size 20cm nhôm đúc</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                       
                        <!-- ===== HÀNG 2 ===== -->
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image14.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Khuôn cupcake</h5><p class="text-danger">110.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Khuôn 12 ổ chống dính</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image15.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Giấy nến</h5><p class="text-danger">25.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Cuộn giấy nến nướng bánh</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image16.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Tấm lót silicon</h5><p class="text-danger">70.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Chịu nhiệt tốt, dùng nhiều lần</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                        
                        <!-- ===== HÀNG 3 ===== -->
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image17.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Nhiệt kế lò</h5><p class="text-danger">95.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Đo nhiệt độ thực tế trong lò</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                        <div class="col-md-4 mb-3"><div class="card h-100 card-hover"> <img src="images/image18.jpg" class="card-img-top" style="height:200px; object-fit:cover;"><div class="card-body"><h5>Giá làm nguội bánh</h5><p class="text-danger">65.000đ</p></div> <!-- Overlay khi hover --><div class="overlay"><p>Giá inox thoát nhiệt nhanh</p> <button class="btn btn-warning mt-2">Thêm vào giỏ</button> </div></div></div>
                      
                    </div>
                </div>
                <!-- RIGHT MENU -->
                <div class="col border p-0">
                    <!-- Đăng nhập -->
                    <div class="card m-0">
                        <div class="card-header text-white" style="background-color: #5b1412;" >
                            Đăng nhập tài khoản
                        </div>
                        <div class="card-body" style="background-color: #5b1412;">
                            <form>
                                <div class="form-floating mb-3">
                                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                                    <label for="floatingInput">Tên đăng nhập</label>
                                </div>
                                <div class="form-floating">
                                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">Mật khẩu</label>
                                </div>
                                <button type="submit" style="background-color: #fd9191;" class="btn btn-success">Đăng nhập</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row border" style="background: #5b1412">
                <p class="w-100 text-white">
                    @copyright by Coang
                </p>
            </div>
        </div>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
    </body>
</html>
