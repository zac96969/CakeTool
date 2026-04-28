/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession; // Hoặc javax tùy phiên bản Tomcat
import java.util.List;
import connect.Account;
import connect.Item;
import connect.DAO;

/**
 *
 * @author Tiến Phát
 */
@WebServlet(name = "CheckOutControl", urlPatterns = {"/CheckOutControl"})
public class CheckOutControl extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        List<Item> cart = (List<Item>) session.getAttribute("cart");

        if (a == null) {
            response.sendRedirect("dangnhap.jsp");
            return;
        }

        if (cart != null && !cart.isEmpty()) {
            DAO dao = new DAO();
            // Tính tổng tiền giỏ hàng
            double total = 0;
            for (Item i : cart) total += i.getQuantity() * i.getProduct().getPrice();

            // Bước A: Lưu đơn hàng tổng quát
            int orderId = dao.addOrder(a.getId(), total);

            // Bước B: Lưu chi tiết từng món
            for (Item i : cart) {
                dao.addOrderDetail(orderId, i.getProduct().getId(), i.getQuantity(), i.getProduct().getPrice());
            }

            // Bước C: Xóa giỏ hàng và chuyển trang
            session.removeAttribute("cart");
            session.setAttribute("size", 0);
            response.sendRedirect("OrderControl"); 
        } else {
            response.sendRedirect("trangchu.jsp");
        }
    }
}