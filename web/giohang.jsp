<%@page import="connect.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Giỏ hàng - CakeTool</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
            /* Cấu trúc chung */
            body { background-color: #f8f9fa; margin: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
            
            /* Căn menu sang trái đồng bộ với các trang trước */
            .menu ul { 
                list-style: none; 
                padding: 12px 30px; 
                margin: 0; 
                display: flex; 
                justify-content: flex-start; /* Ép menu về bên trái */
                gap: 25px; 
            }
            .menu ul li a { color: #ffffff; text-decoration: none; font-weight: bold; transition: opacity 0.3s; }
            .menu ul li a:hover { opacity: 0.8; }

            /* Khu vực giỏ hàng */
            .cart-container { padding: 40px 5%; min-height: 500px; }
            .cart-title { color: #802020; text-align: center; margin-bottom: 30px; text-transform: uppercase; letter-spacing: 1px; }

            /* Bảng giỏ hàng */
            .cart-table { width: 100%; border-collapse: collapse; background: white; border-radius: 12px; overflow: hidden; box-shadow: 0 8px 20px rgba(0,0,0,0.08); }
            .cart-table th { background: #802020; color: white; padding: 18px; text-align: center; font-size: 0.9em; }
            .cart-table td { padding: 20px 15px; border-bottom: 1px solid #eee; vertical-align: middle; text-align: center; }
            
            /* CSS hiển thị hình ảnh rõ ràng và to hơn */
            .product-img { 
                width: 120px;       /* Tăng chiều rộng ảnh */
                height: 90px;      /* Tăng chiều cao ảnh */
                object-fit: cover; /* Giữ ảnh không bị méo */
                border-radius: 8px; 
                border: 1px solid #eee;
                transition: transform 0.2s;
            }
            .product-img:hover { transform: scale(1.1); } /* Hiệu ứng phóng to khi di chuột */
            
            /* Các nút và input */
            .quantity-input { width: 50px; padding: 6px; text-align: center; border: 1px solid #ddd; border-radius: 5px; }
            .btn-delete { color: #d9534f; text-decoration: none; font-weight: bold; transition: color 0.3s; }
            .btn-delete:hover { color: #a94442; }

            /* Tổng cộng và Thanh toán */
            .total-section { margin-top: 30px; text-align: right; background: white; padding: 25px; border-radius: 12px; box-shadow: 0 5px 15px rgba(0,0,0,0.05); }
            .total-price { color: #802020; font-size: 1.6em; font-weight: bold; margin-left: 10px; }
            .btn-checkout { 
                background: #802020; color: white; padding: 14px 35px; 
                border: none; border-radius: 8px; cursor: pointer; 
                font-weight: bold; text-decoration: none; display: inline-block;
                transition: all 0.3s; box-shadow: 0 4px 6px rgba(128, 32, 32, 0.2);
            }
            .btn-checkout:hover { background: #a02828; transform: translateY(-2px); }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="row border">
                <img src="images/banner.jpeg" alt="Banner" style="width: 100%; display: block;">
            </div>
            <div class="menu" style="background: #4a1414;">
                <ul>
                    <li><a href="trangchu.jsp">Trang chủ</a></li>
                    <li><a href="dangky.jsp">Đăng ký</a></li>
                </ul>
            </div>
        </div>

        <div class="cart-container">
            <h2 class="cart-title">Giỏ hàng của bạn</h2>
            
            <table class="cart-table">
                <thead>
                    <tr>
                        <th style="text-align: left; padding-left: 25px;">Sản phẩm</th>
                        <th>Hình ảnh</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Tổng</th>
                        <th>Xóa</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Item> cart = (List<Item>) session.getAttribute("cart");
                        double total = 0;
                        if (cart != null && !cart.isEmpty()) {
                            for (Item it : cart) {
                                // Kiểm tra null để tránh lỗi NullPointerException
                                if (it.getProduct() != null) { 
                                    double subTotal = it.getQuantity() * it.getProduct().getPrice();
                                    total += subTotal;
                    %>
                    <tr>
                        <td style="text-align: left; padding-left: 25px; font-weight: 500;"><%= it.getProduct().getName() %></td>
                        <td>
                            <img src="images/<%= it.getProduct().getImage() %>" class="product-img" alt="<%= it.getProduct().getName() %>">
                        </td>
                        <td><%= String.format("%,.0f", it.getProduct().getPrice()) %> VNĐ</td>
                        <td>
                            <input type="number" value="<%= it.getQuantity() %>" class="quantity-input" min="1">
                        </td>
                        <td style="color: #802020; font-weight: bold;"><%= String.format("%,.0f", subTotal) %> VNĐ</td>
                        <td><a href="RemoveCartControl?pid=<%= it.getProduct().getId() %>" class="btn-delete">Xóa</a></td>
                    </tr>
                    <% 
                                } 
                            }
                        } else { 
                    %>
                    <tr>
                        <td colspan="6" style="text-align: center; padding: 40px; color: #777;">
                            Giỏ hàng của bạn đang trống. <a href="trangchu.jsp" style="color: #802020; font-weight: bold;">Tiếp tục mua sắm</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>

            <% if (total > 0) { %>
            <div class="total-section">
                <p style="font-size: 1.1em; color: #555;">Tổng thanh toán: <span class="total-price"><%= String.format("%,.0f", total) %> VNĐ</span></p>
                <a href="OrderControl" class="btn-checkout">THANH TOÁN NGAY</a>
            </div>
            <% } %>
        </div>

        <div class="footer" style="background: #4a1414; color: white; padding: 25px; text-align: center;">
            <div style="display: flex; justify-content: center; gap: 80px; flex-wrap: wrap;">
                <span>Nguyễn Đình Quang</span>
                <span>Phạm Tiến Phát</span>
                <span>Nguyễn Hữu Thắng</span>
            </div>
        </div>
    </body>
</html>