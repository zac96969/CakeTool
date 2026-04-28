<%-- 
    Document   : lienhe
    Created on : Apr 16, 2026, 12:54:10 AM
    Author     : Tiến Phát
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên hệ - CakeTool</title>
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
                    <li><a href="gioithieu.jsp"style="color: #ffffff;">Giới thiệu</a></li>
                </ul>
            </div>
        </div>

        <div class="container" style="display: flex; padding: 20px; min-height: 500px;">
            
            <div class="content-left" style="flex: 3; padding-right: 40px;">
                <h2 style="color: #802020;">Gửi lời nhắn cho CakeTool</h2>
                <hr>
                <p>Hãy để lại thông tin, chúng tôi sẽ phản hồi bạn sớm nhất có thể.</p>
                
                <form action="LienHeControl" method="post" style="margin-top: 20px;">
                    <div style="margin-bottom: 15px;">
                        <label style="display: block; font-weight: bold; margin-bottom: 5px;">Họ và tên:</label>
                        <input type="text" name="txtHoTen" placeholder="Nhập tên của bạn..." 
                               style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;" required>
                    </div>

                    <div style="margin-bottom: 15px;">
                        <label style="display: block; font-weight: bold; margin-bottom: 5px;">Email:</label>
                        <input type="email" name="txtEmail" placeholder="example@gmail.com" 
                               style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px;" required>
                    </div>

                    <div style="margin-bottom: 15px;">
                        <label style="display: block; font-weight: bold; margin-bottom: 5px;">Nội dung:</label>
                        <textarea name="txtNoiDung" placeholder="Bạn cần hỗ trợ gì về dụng cụ làm bánh?" 
                                  style="width: 100%; height: 150px; padding: 10px; border: 1px solid #ccc; border-radius: 4px; resize: none;" required></textarea>
                    </div>

                    <button type="submit" 
                            style="background: #802020; color: white; padding: 12px 30px; border: none; border-radius: 4px; cursor: pointer; font-weight: bold;">
                        GỬI LIÊN HỆ
                    </button>
                </form>
            </div>

            <div class="sidebar" style="flex: 1; border-left: 1px solid #ddd; padding-left: 20px;">
                <h4 style="color: #802020;">Thông tin hỗ trợ</h4>
                <p><b>Hotline:</b> 0976.385.622</p>
                <p><b>Email:</b> support@caketool.com</p>
                <p><b>Địa chỉ:</b> Ngõ 296 Lĩnh Nam</p>
                <hr>
                <p style="font-size: 0.9em; color: #666; font-style: italic;">
                    Thời gian làm việc từ 8:00 đến 21:00 tất cả các ngày trong tuần.
                </p>
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
