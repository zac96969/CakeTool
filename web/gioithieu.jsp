<%-- 
    Document   : gioithieu
    Created on : Apr 15, 2026, 11:30:15 PM
    Author     : Tiến Phát
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giới thiệu - CakeTool</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"> 
        <style>
            .menu ul { list-style: none; padding: 20px; margin: 0; display: flex; justify-content: flex-start; gap: 20px; }
            .menu ul li a { text-decoration: none; font-weight: bold; transition: opacity 0.3s; }
            .menu ul li a:hover { opacity: 0.8; }
        </style>
    </head>
    <body>
        
        <div class="header">
            <div class="row border">
                <img src="images/banner.jpeg" alt="" style="width: 100%;" class="m-0">
            </div>
            <div class="menu" style="background: #4a1414;">
                <ul>
                    <li><a href="trangchu.jsp" style="color: #ffffff;">Trang chủ</a></li>
                    <li><a href="lienhe.jsp" style="color: #ffffff;">Liên hệ</a></li>
                </ul>
            </div>
        </div>

        <div class="container" style="display: flex; padding: 20px;">
            <div class="content-left" style="flex: 3; padding-right: 20px;">
                <h2 style="color: #802020;">Về chúng tôi - CakeTool</h2>
                <hr>
                <p>Chào mừng bạn đến với <b>CakeTool</b>! Chúng tôi là đơn vị chuyên cung cấp các giải pháp và dụng cụ làm bánh toàn diện.</p>
                
                <img src="images/gioithieu.jpg" alt="Cửa hàng CakeTool" style="width: 100%; margin: 15px 0;">

                <h3>Tại sao chọn CakeTool?</h3>
                <ul>
                    <li><b>Chất lượng hàng đầu:</b> Mọi sản phẩm đều được kiểm định an toàn thực phẩm.</li>
                    <li><b>Giá cả cạnh tranh:</b> Phù hợp cho cả người mới bắt đầu và thợ bánh chuyên nghiệp.</li>
                    <li><b>Đồng hành cùng bạn:</b> Chúng tôi không chỉ bán đồ, chúng tôi chia sẻ đam mê.</li>
                </ul>
            </div>

            <div class="sidebar" style="flex: 1; border-left: 1px solid #ddd; padding-left: 20px;">
                <h4>Hỗ trợ trực tuyến</h4>
                <p>Hotline: 0976.385.622</p>
                <p>Email: support@caketool.com</p>
            </div>
        </div>

        <div class="footer" style="background: #4a1414; color: white; padding: 15px; margin-top: 20px;">
    <div style="display: flex; justify-content: center; gap: 300px;">
        <span>Nguyễn Đình Quang</span>
        <span>Phạm Tiến Phát</span>
        <span>Nguyễn Hữu Thắng</span>
    </div>
</div>

    </body>
</html>
