/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author MS QUOC
 */
import com.edusys.utils.JdbcHelper;
import java.sql.Connection;
import java.sql.SQLException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TestSqlConnection {
    public static void main(String[] args) {
        // Thông tin kết nối CSDL SQL Server
        String url = "jdbc:sqlserver://DESKTOP-ISEQ9P9\\MSSQLSERVER01;databaseName=grocery";
        String user = "sa";
        String password = "Quocvjp12345";

        // Thực hiện kết nối
        try {
            Connection connection = DriverManager.getConnection(url, user, password);

            if (connection != null) {
                System.out.println("Kết nối thành công!");
                // Đóng kết nối sau khi sử dụng
                connection.close();
            } else {
                System.out.println("Kết nối thất bại!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}




