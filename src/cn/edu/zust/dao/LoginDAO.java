package cn.edu.zust.dao;

import cn.edu.zust.bean.Login;
import cn.edu.zust.bean.Message;

import java.sql.*;
import java.util.ArrayList;

public class LoginDAO {

    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop?serverTimezone=UTC",
                    "root", "admin");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public Login checkLogin(String username, String userpassword) {
        try {
            pstmt = getConnection().prepareStatement("SELECT * FROM user WHERE username=? AND userpassword=?");
            pstmt.setString(1, username);
            pstmt.setString(2, userpassword);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                Login login = new Login();
                login.setId(rs.getInt(1));
                login.setUsername(rs.getString(2));
                login.setUserpassword(rs.getString(3));
                return login;
            }
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<Message> getAll() {
        try {
            ArrayList<Message> arrayList=new ArrayList<Message>();
            pstmt = getConnection().prepareStatement("SELECT * FROM message");
            rs = pstmt.executeQuery();
            if (rs.next()) {
                Message message = new Message();
                message.setId(rs.getInt(1));
                message.setUsername(rs.getString(2));
                message.setTime(rs.getDate(3));
                message.setTitle(rs.getString(4));
                message.setMessage(rs.getString(5));
                arrayList.add(message);
        }
            return arrayList;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertMessage(Message message) {
        try {
            pstmt = getConnection().prepareStatement("INSERT INTO message VALUES(?,?,?,?,?)");
            pstmt.setInt(1, message.getId());
            pstmt.setString(2, message.getUsername());
            pstmt.setDate(3, (Date) message.getTime());
            pstmt.setString(4, message.getTitle());
            pstmt.setString(5, message.getMessage());
            pstmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean insertUser(String username, String userpassword) {
        try {
            pstmt = getConnection().prepareStatement("INSERT INTO user(username, userpassword) VALUES (?,?)");
            pstmt.setString(1, username);
            pstmt.setString(2, userpassword);
            pstmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void close() {
        try {
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


