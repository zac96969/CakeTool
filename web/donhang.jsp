<%-- 
    Document   : donhang
    Created on : Apr 26, 2026, 8:51:08 PM
    Author     : Tiến Phát
--%>

<%@page import="connect.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xác nhận đơn hàng - CakeTool</title>
    <style>
        body { font-family: sans-serif; background: #fdf2f2; text-align: center; padding: 50px; }
        .success-box { background: white; padding: 40px; border-radius: 15px; display: inline-block; box-shadow: 0 10px 20px rgba(0,0,0,0.1); }
        h1 { color: #802020; }
        .order-info { margin: 20px 0; text-align: left; }
        .btn-home { background: #802020; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px; }
    </style>
</head>
<body>
    <div class="success-box">
        <h1>ĐẶT HÀNG THÀNH CÔNG!</h1>
        <p>Cảm ơn quý khách đã tin tưởng CakeTool.</p>
        
        <div class="order-info">
            <h3>Chi tiết đơn hàng của bạn:</h3>
            <ul>
                <%
                    List<Item> cart = (List<Item>) session.getAttribute("cart");
                    double total = 0;
                    if (cart != null) {
                        for (Item it : cart) {
                            total += it.getQuantity() * it.getProduct().getPrice();
                %>
                    <li><%= it.getProduct().getName() %> x <%= it.getQuantity() %></li>
                <% 
                        }
                    } 
                %>
            </ul>
            <p><strong>Tổng tiền: <%= String.format("%,.0f", total) %> VNĐ</strong></p>
        </div>
        
        <a href="trangchu.jsp" class="btn-home">Tiếp tục mua sắm</a>
    </div>
    
    <% 
        session.removeAttribute("cart"); 
    %>
</body>
</html>