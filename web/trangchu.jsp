<%-- 
    Document   : trangchu
    Created on : Apr 9, 2026, 5:13:25 PM
    Author     : Admin
--%>
<%@page import="java.util.List"%>
<%@page import="connect.SanPham"%>
<%@page import="connect.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CakeTool - Thế giới dụng cụ làm bánh</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="css/bootstrap.rtl.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="container">
            <div class="row border">
                <img src="images/banner.jpeg" alt="" style="width: 100%;" class="m-0">
            </div>
            <div class="row border">
                <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #5b1412;">
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
                                    <a class="nav-link" href="gioithieu.jsp" style="color:#ffffff;">Giới thiệu</a>
                                </li>
                                <li class="nav-item">
    <a class="nav-link" href="giohang.jsp" style="color: #ffc107; font-weight: bold;">
        🛒 Giỏ hàng (<span class="text-white">${sessionScope.size != null ? sessionScope.size : 0}</span>)
    </a>
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
                                    <a class="nav-link" href="lienhe.jsp" style="color:#ffffff;">Liên hệ</a> 
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row border">
                <div class="col-md-2 border p-0">
                    <div class="list-group m-0">
                        <a href="trangchu.jsp" class="list-group-item list-group-item-action active" aria-current="true" style="background-color: #5b1412; border-color: #5b1412;">
                            DANH MỤC
                        </a>
                        <a href="dccoban.jsp" class="list-group-item list-group-item-action">Dụng cụ cơ bản</a>
                        <a href="dcnuong.jsp" class="list-group-item list-group-item-action">Dụng cụ nướng</a>
                        <a href="dctrangtri.jsp" class="list-group-item list-group-item-action">Dụng cụ trang trí</a>
                        <a href="dcnangcao.jsp" class="list-group-item list-group-item-action">Dụng cụ nâng cao</a>
                        <a href="dckhac.jsp" class="list-group-item list-group-item-action">Dụng cụ hỗ trợ khác</a>
                    </div>
                </div>

                <div class="col-md-7 border">
                    <div class="row p-2" style="color: #5b1412"><h3>DANH SÁCH SẢN PHẨM</h3></div>
                    <div class="row">
                        <%
                            DAO dao = new DAO();
                            List<SanPham> list = dao.getAllSanPham();
                            for (SanPham sp : list) {
                        %>
                        <div class="col-md-4 mb-3">
                            <div class="card h-100 card-hover"> 
                                <img src="images/<%= sp.getImage() %>" class="card-img-top" style="height:150px; object-fit:cover;">
                                <div class="card-body">
                                    <h6 class="card-title"><%= sp.getName() %></h6>
                                    <p class="text-danger fw-bold"><%= sp.getPrice() %>đ</p>
                                </div> 
                                <div class="overlay">
    <p style="font-size: 0.8em;"><%= sp.getDescription() %></p> 
    <a href="AddToCartControl?pid=<%= sp.getId() %>" class="btn btn-warning btn-sm mt-2">
        Thêm vào giỏ
    </a> 
</div>
                            </div>
                        </div>
                        <% } %>
                    </div>
                </div>

                <div class="col-md-3 border p-0">
                    <div class="card m-0 border-0">
                        <div class="card-header text-white" style="background-color: #5b1412;" >
                            <%= (session.getAttribute("acc") == null) ? "Đăng nhập tài khoản" : "Thông tin tài khoản" %>
                        </div>
                        <div class="card-body" style="background-color: #5b1412; min-height: 250px;">
                            
                            <% if (session.getAttribute("acc") == null) { %>
                                <form action="LoginControl" method="post">
                                    <p class="text-warning small"><%= (request.getAttribute("mess") != null) ? request.getAttribute("mess") : "" %></p>
                                    
                                    <div class="form-floating mb-3">
                                        <input type="text" name="user" class="form-control" id="floatingInput" placeholder="User" required>
                                        <label for="floatingInput">Tên đăng nhập</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="password" name="pass" class="form-control" id="floatingPassword" placeholder="Pass" required>
                                        <label for="floatingPassword">Mật khẩu</label>
                                    </div>
                                    
                                    <div class="d-grid gap-2">
                                        <button type="submit" style="background-color: #fd9191; color: #5b1412; font-weight: bold; border: none;" class="btn btn-success">
                                            ĐĂNG NHẬP
                                        </button>
                                        <a href="dangky.jsp" style="background-color: #fd9191; color: #5b1412; font-weight: bold; border: none;" class="btn btn-success">
                                            ĐĂNG KÝ
                                        </a>
                                    </div>
                                </form>
                            <% } else { %>
                                <div class="text-center text-white p-3">
                                    <img src="images/user_icon.png" style="width: 50px; margin-bottom: 10px;" onerror="this.src='https://cdn-icons-png.flaticon.com/512/149/149071.png'">
                                    <p class="mb-1">Xin chào,</p>
                                    <h5 class="text-warning">${sessionScope.acc.hoTen}</h5>
                                    <p class="small text-light">Email: ${sessionScope.acc.email}</p>
                                    <hr style="background-color: white;">
                                    <a href="LogoutControl" class="btn btn-sm btn-outline-light w-100">Đăng xuất</a>
                                </div>
                            <% } %>
                            
                        </div>
                    </div>
                </div>
            </div>

            <div class="row border text-white p-3" style="background: #5b1412">
                <div class="col-md-4 text-center">Nguyễn Đình Quang | 22/04/2005</div>
                <div class="col-md-4 text-center">Phạm Tiến Phát | 10/03/2005</div>
                <div class="col-md-4 text-center">Nguyễn Hữu Thắng | 23/06/2005</div>
            </div>
        </div>
        
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
    </body>
</html>