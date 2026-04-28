/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager; 

public class dbConnect {
    public Connection getConnection() throws Exception {
       
        Class.forName("com.mysql.cj.jdbc.Driver");
        return java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/ban_dung_cu_lam_banh","root", "");
    }

    public static void main(String[] args) {
        try {
            dbConnect db = new dbConnect();
            Connection conn = db.getConnection();
            if (conn != null) {
                System.out.println("Chúc mừng! Kết nối thành công.");
            }
        } catch (Exception e) {
            System.out.println("Lỗi kết nối: " + e.getMessage());
            e.printStackTrace();
        }
    }
}