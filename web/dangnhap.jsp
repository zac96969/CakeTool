<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Đăng nhập - CakeTool</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
            body { background-color: #f8f9fa; margin: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
            
            .auth-container { 
                display: flex; 
                justify-content: center; 
                align-items: center; 
                padding: 60px 0; 
                background: linear-gradient(135deg, #fdf2f2 0%, #fae1e1 100%); 
                min-height: 500px;
            }
            .auth-box { 
                background: white; 
                padding: 40px; 
                border-radius: 15px; 
                box-shadow: 0 10px 25px rgba(128, 32, 32, 0.1); 
                width: 400px; 
                border: 1px solid #eee;
            }
            .auth-box h2 { 
                color: #802020; 
                text-align: center; 
                margin-bottom: 10px; 
                font-size: 1.8em;
                text-transform: uppercase;
                letter-spacing: 1px;
            }
            .auth-box p.sub-title {
                text-align: center;
                color: #777;
                margin-bottom: 25px;
                font-size: 0.9em;
            }
            .input-group { margin-bottom: 20px; }
            .input-group label { 
                display: block; 
                margin-bottom: 8px; 
                font-weight: 600; 
                color: #4a1414; 
                font-size: 0.9em; 
            }
            .input-group input { 
                width: 100%; 
                padding: 12px; 
                border: 1.5px solid #eee; 
                border-radius: 8px; 
                box-sizing: border-box; 
                transition: all 0.3s ease;
                background: #fafafa;
            }
            .input-group input:focus { 
                border-color: #802020; 
                outline: none; 
                background: white;
                box-shadow: 0 0 8px rgba(128, 32, 32, 0.1);
            }
            .btn-auth { 
                width: 100%; 
                padding: 14px; 
                background: #802020; 
                color: white; 
                border: none; 
                border-radius: 8px; 
                cursor: pointer; 
                font-weight: bold; 
                font-size: 1em;
                transition: background 0.3s ease, transform 0.2s ease;
                box-shadow: 0 4px 6px rgba(128, 32, 32, 0.2);
                margin-top: 10px;
            }
            .btn-auth:hover { 
                background: #a02828; 
                transform: translateY(-2px);
            }
            .error { color: #d9534f; font-size: 0.9em; text-align: center; margin-bottom: 15px; font-weight: bold; }
            .menu ul { 
                list-style: none; 
                padding: 12px 30px; 
                margin: 0; 
                display: flex; 
                justify-content: flex-start;
                gap: 25px; 
            }
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
                    <li><a href="dangky.jsp" style="color: #ffffff;">Đăng ký</a></li>
                </ul>
            </div>
        </div>

        <div class="auth-container">
            <div class="auth-box">
                <h2>Đăng nhập</h2>
                <p class="sub-title">Mừng bạn quay trở lại với CakeTool</p>
                
                <p class="error">${mess}</p>
                
                <form action="LoginControl" method="post">
                    <div class="input-group">
                        <label>Tên đăng nhập</label>
                        <input type="text" name="user" placeholder="Nhập tên đăng nhập" required>
                    </div>
                    <div class="input-group">
                        <label>Mật khẩu</label>
                        <input type="password" name="pass" placeholder="Nhập mật khẩu" required>
                    </div>
                    <button type="submit" class="btn-auth">ĐĂNG NHẬP</button>
                </form>
                
                <p style="text-align: center; margin-top: 20px; font-size: 0.9em; color: #666;">
                    Chưa có tài khoản? <a href="dangky.jsp" style="color: #802020; font-weight: bold; text-decoration: none;">Đăng ký ngay</a>
                </p>
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