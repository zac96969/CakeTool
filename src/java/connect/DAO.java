/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connect;

/**
 *
 * @author Tiến Phát
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import connect.Account;
import java.sql.Statement;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<SanPham> getAllSanPham() {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from san_pham"; 
        try {
            conn = new dbConnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
    list.add(new SanPham(
        rs.getInt(1),      
        rs.getString(2),
        rs.getString(4),
        rs.getDouble(3), 
        rs.getString(5)   
    ));
}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public void insertLienHe(String hoTen, String email, String noiDung) {
    String query = "INSERT INTO lien_he (ho_ten, email, noi_dung) VALUES (?, ?, ?)";
    try {
        conn = new dbConnect().getConnection(); 
        ps = conn.prepareStatement(query);
        ps.setString(1, hoTen);
        ps.setString(2, email);
        ps.setString(3, noiDung);
        ps.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
}

public Account login(String user, String pass) {
    String query = "SELECT * FROM nguoi_dung WHERE ten_dang_nhap = ? AND mat_khau = ?";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, user);
        ps.setString(2, pass);
        rs = ps.executeQuery();
        if (rs.next()) {
            return new Account(rs.getInt(1), 
                               rs.getString(2), 
                               rs.getString(3),
                               rs.getString(4),
                               rs.getString(5),
                               rs.getString(6),
                               rs.getString(7));
        }
    } catch (Exception e) {
        System.out.println("Lỗi đăng nhập" + e.getMessage());
    }
    return null;
}

public Account checkAccountExist(String user) {
    String query = "SELECT * FROM nguoi_dung WHERE ten_dang_nhap = ?";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, user);
        rs = ps.executeQuery();
        if (rs.next()) {
            return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), 
                               rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7));
        }
    } catch (Exception e) { e.printStackTrace(); }
    return null;
}

public void signup(String user, String pass, String hoTen, String email, String sdt, String diaChi) {
    String query = "INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, ho_ten, email, so_dien_thoai, dia_chi) VALUES (?,?,?,?,?,?)";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, user);
        ps.setString(2, pass);
        ps.setString(3, hoTen);
        ps.setString(4, email);
        ps.setString(5, sdt);
        ps.setString(6, diaChi);
        ps.executeUpdate();
    } catch (Exception e) { e.printStackTrace(); }
}

public int addOrder(int userId, double total) {
    String query = "INSERT INTO don_hang (ma_nguoi_dung, tong_tien) VALUES (?, ?)";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        ps.setInt(1, userId);
        ps.setDouble(2, total);
        ps.executeUpdate();
        
        rs = ps.getGeneratedKeys();
        if (rs.next()) {
            return rs.getInt(1);
        }
    } catch (Exception e) { e.printStackTrace(); }
    return 0;
}

public void addOrderDetail(int orderId, int productId, int quantity, double price) {
    String query = "INSERT INTO chi_tiet_don_hang (ma_don_hang, ma_san_pham, so_luong, gia_don_vi) VALUES (?, ?, ?, ?)";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, orderId);
        ps.setInt(2, productId);
        ps.setInt(3, quantity);
        ps.setDouble(4, price);
        ps.executeUpdate();
    } catch (Exception e) { e.printStackTrace(); }
}

public List<Order> getOrdersByUserId(int userId) {
    List<Order> list = new ArrayList<>();
    String query = "SELECT * FROM don_hang WHERE ma_nguoi_dung = ? ORDER BY ngay_dat DESC";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, userId);
        rs = ps.executeQuery();
        while (rs.next()) {
            list.add(new Order(rs.getInt(1), rs.getInt(2), rs.getTimestamp(3), rs.getDouble(4)));
        }
    } catch (Exception e) { e.printStackTrace(); }
    return list;
}
public SanPham getSanPhamByID(String id) {
    String query = "SELECT * FROM san_pham WHERE id = ?";
    try {
        conn = new dbConnect().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, id);
        rs = ps.executeQuery();
        if (rs.next()) {
            // Thứ tự cột chuẩn theo ảnh Database của Phát:
            return new SanPham(
                rs.getInt(1),      // id
                rs.getString(2),   // ten_san_pham
                rs.getString(4),   // hinh_anh (Cột số 4)
                rs.getDouble(3),   // gia_ban (Cột số 3)
                rs.getString(5)    // mo_ta (Cột số 5)
            );
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}
}
