<%-- 
    Document   : dangky
    Created on : Apr 19, 2026, 5:06:29 PM
    Author     : Tiến Phát
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Đăng ký thành viên - CakeTool</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
            body { background-color: #f8f9fa; margin: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
            
            .auth-container { 
                display: flex; 
                justify-content: center; 
                align-items: center; 
                padding: 50px 0; 
                background: linear-gradient(135deg, #fdf2f2 0%, #fae1e1 100%); 
            }

            .auth-box-large { 
                background: white; 
                padding: 40px; 
                border-radius: 15px; 
                box-shadow: 0 10px 25px rgba(128, 32, 32, 0.1); 
                width: 550px; 
                border: 1px solid #eee;
            }

            .auth-box-large h2 { 
                color: #802020; 
                text-align: center; 
                margin-bottom: 10px; 
                font-size: 1.8em;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            .auth-box-large p.sub-title {
                text-align: center;
                color: #777;
                margin-bottom: 30px;
                font-size: 0.9em;
            }

            .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
            .full-width { grid-column: span 2; }

            .input-group label { 
                display: block; 
                margin-bottom: 8px; 
                font-weight: 600; 
                color: #4a1414; 
                font-size: 0.85em; 
            }

            .input-group input, .input-group textarea { 
                width: 100%; 
                padding: 12px; 
                border: 1.5px solid #eee; 
                border-radius: 8px; 
                box-sizing: border-box; 
                transition: all 0.3s ease;
                background: #fafafa;
            }

            .input-group input:focus, .input-group textarea:focus { 
                border-color: #802020; 
                outline: none; 
                background: white;
                box-shadow: 0 0 8px rgba(128, 32, 32, 0.1);
            }

            .btn-auth { 
                width: 100%; 
                padding: 15px; 
                background: #802020; 
                color: white; 
                border: none; 
                border-radius: 8px; 
                cursor: pointer; 
                font-weight: bold; 
                margin-top: 25px; 
                font-size: 1em;
                transition: background 0.3s ease, transform 0.2s ease;
                box-shadow: 0 4px 6px rgba(128, 32, 32, 0.2);
            }

            .btn-auth:hover { 
                background: #a02828; 
                transform: translateY(-2px);
            }

            .btn-auth:active { transform: translateY(0); }

            .error { color: #d9534f; font-size: 0.9em; text-align: center; margin-bottom: 15px; font-weight: bold; }
           
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
                    <li><a href="dangnhap.jsp" style="color: #ffffff;">Đăng nhập</a></li>
                </ul>
            </div>
        </div>

        <div class="auth-container">
            <div class="auth-box-large">
                <h2>Đăng ký thành viên</h2>
                <p class="sub-title">Vui lòng điền đầy đủ thông tin để trở thành thành viên của CakeTool</p>
                
                <p class="error">${mess}</p>
                
                <form action="SignUpControl" method="post">
                    <div class="form-grid">
                        <div class="input-group">
                            <label>Tên đăng nhập (*)</label>
                            <input type="text" name="user" placeholder="Nhập tên đăng nhập" required>
                        </div>
                        <div class="input-group">
                            <label>Họ và tên</label>
                            <input type="text" name="name" placeholder="Nhập họ và tên">
                        </div>
                        <div class="input-group">
                            <label>Mật khẩu (*)</label>
                            <input type="password" name="pass" placeholder="••••••••" required>
                        </div>
                        <div class="input-group">
                            <label>Nhập lại mật khẩu (*)</label>
                            <input type="password" name="repass" placeholder="••••••••" required>
                        </div>
                        
                        <div class="input-group">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="example@gmail.com">
                        </div>
                        <div class="input-group">
                            <label>Số điện thoại</label>
                            <input type="text" name="phone" placeholder="Số điện thoại của bạn">
                        </div>
                        <div class="input-group full-width">
                            <label>Địa chỉ giao hàng</label>
                            <textarea name="address" rows="2" placeholder="Nhập địa chỉ cụ thể để nhận bánh..."></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn-auth">HOÀN TẤT ĐĂNG KÝ</button>
                </form>
            </div>
        </div>

        <div class="footer" style="background: #4a1414; color: white; padding: 20px; margin-top: 0;">
            <div style="display: flex; justify-content: center; gap: 100px; flex-wrap: wrap;">
                <span>Nguyễn Đình Quang</span>
                <span>Phạm Tiến Phát</span>
                <span>Nguyễn Hữu Thắng</span>
            </div>
        </div>
    </body>
</html>