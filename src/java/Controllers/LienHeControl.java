package Controllers;

import connect.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Author: Tiến Phát
 */
@WebServlet(name = "LienHeControl", urlPatterns = {"/LienHeControl"})
public class LienHeControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try {
            String hoTen = request.getParameter("txtHoTen");
            String email = request.getParameter("txtEmail");
            String noiDung = request.getParameter("txtNoiDung");

            DAO dao = new DAO();
            dao.insertLienHe(hoTen, email, noiDung);

            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Cảm ơn " + hoTen + "! Tin nhắn của bạn đã được gửi đi.');");
            response.getWriter().println("window.location.href='trangchu.jsp';"); // Quay về trang chủ
            response.getWriter().println("</script>");

        } catch (Exception e) {
            response.getWriter().println("Đã xảy ra lỗi: " + e.getMessage());
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}