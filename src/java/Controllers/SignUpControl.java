package Controllers;

import connect.DAO;
import connect.Account;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "SignUpControl", urlPatterns = {"/SignUpControl"})
public class SignUpControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        if (!pass.equals(repass)) {
            request.setAttribute("mess", "Mật khẩu nhập lại không chính xác!");
            request.getRequestDispatcher("dangky.jsp").forward(request, response);
        } else {
            DAO dao = new DAO();
            Account a = dao.checkAccountExist(user);
            
            if (a == null) {
                dao.signup(user, pass, name, email, phone, address);
                response.sendRedirect("dangnhap.jsp");
            } else {
                request.setAttribute("mess", "Tên đăng nhập này đã có người sử dụng!");
                request.getRequestDispatcher("dangky.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}