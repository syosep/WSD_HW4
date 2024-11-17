package com.example.jsp_crud_db.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
    private static Connection conn = null;
    public static Connection getConnection() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            if (conn == null) {
                conn = DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/OSS24_22100423?user=OSS24_22100423&password=nieJo3ch");
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return conn;
    }


    public static void closeConnection() {
        try {
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        Connection conn = JDBCUtil.getConnection();
        if (conn != null) {
            System.out.println("DB연결완료!");
        }
        else {
            System.out.println("DB연결실패!");
        }
    }
}
