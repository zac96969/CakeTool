/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import connect.DAO;
import connect.Item;
import connect.SanPham;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "AddToCartControl", urlPatterns = {"/AddToCartControl"})
public class AddToCartControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Lấy mã sản phẩm (pid) từ trang chủ gửi sang
        String id = request.getParameter("pid");
        
        // 2. Gọi DAO để lấy thông tin chi tiết của sản phẩm đó
        DAO dao = new DAO();
        SanPham p = dao.getSanPhamByID(id); 
        
        // 3. Lấy giỏ hàng từ Session ra
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        
        // Nếu chưa có giỏ hàng thì tạo mới một cái túi trống
        if (cart == null) {
            cart = new ArrayList<>();
        }

        // 4. Kiểm tra xem món này đã có trong giỏ chưa
        boolean isExist = false;
        for (Item i : cart) {
            if (i.getProduct().getId() == Integer.parseInt(id)) {
                i.setQuantity(i.getQuantity() + 1); // Có rồi thì tăng số lượng lên 1
                isExist = true;
                break;
            }
        }

        // Nếu món này mới tinh thì bỏ vào giỏ với số lượng là 1
        if (!isExist) {
            cart.add(new Item(p, 1));
        }

        // 5. Lưu giỏ hàng ngược lại vào Session và cập nhật số lượng hiển thị
        session.setAttribute("cart", cart);
        session.setAttribute("size", cart.size());

        // 6. Quay lại trang chủ để mua tiếp (đúng như ý bạn muốn)
        response.sendRedirect("trangchu.jsp");
    }
}