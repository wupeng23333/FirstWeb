package cn.edu.zust.bean.jsp;

import java.sql.*;
import java.util.regex.Pattern;

public class UserBean {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;
    private int pageNum = 0;
    private int pageSize = 0;

    /**
     * 数据库连接
     */
    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop?serverTimezone=UTC",
                    "root", "root");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 注册验证用户名是否存在，手机和邮箱格式
     */

    public int regCheck(String username, String tel, String email) {
        int flag = 0;
        String sql = "SELECT * FROM  users WHERE username=?";
        try {
            pstmt = getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            if (rs.next())
                return flag;
            else {
                String expr = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})$";
                Pattern pattern = Pattern.compile("^(13[0-9]|15[0-9]|153|15[6-9]|180|18[23]|18[5-9])\\d{8}$");
                if (pattern.matcher(tel).matches() && email.matches(expr))
                    flag = 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 用户登陆验证
     */
    public int loginCheck(String username, String userpassword) {
        int flag = 0;
        String sql = "SELECT * FROM users WHERE username=? AND userpassword=?";
        try {
            pstmt = getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, userpassword);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                flag = 1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 新增记录
     */
    public int insert(String username, String userpassword, String sex, String tel, String email) {


        int affectRows = 0;
        String sql = "INSERT INTO users(username,userpassword,sex,tel,email) VALUES(?,?,?,?,?)";
        try {
            pstmt = getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, userpassword);
            pstmt.setString(3, sex);
            pstmt.setString(4, tel);
            pstmt.setString(5, email);
            affectRows = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return affectRows;
    }

    /**
     * 删除记录
     */
    public int delete(int id) {
        int affectRows = 0;
        String sql = "DELETE FROM users WHERE id = ? ";
        try {
            pstmt = getConnection().prepareStatement(sql);
            pstmt.setInt(1, id);
            affectRows = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return affectRows;
    }

    /**
     * 修改记录
     */
    public int update(String username, String userpassword, String sex, String tel, String email, int id) {
        int affectRows = 0;
        String sql = "UPDATE users SET username=?,userpassword=?,sex=?,tel=?,email=? WHERE id = ?";
        try {
            pstmt = getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, userpassword);
            pstmt.setString(3, sex);
            pstmt.setString(4, tel);
            pstmt.setString(5, email);
            pstmt.setInt(6, id);
            affectRows = pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return affectRows;
    }

    /**
     * 查询所有记录
     */
    public ResultSet getAll(int pageSize, int pageNum) {
        String sql = "SELECT * FROM users LIMIT " + (pageNum - 1) * pageSize + "," + pageSize;
        try {
            pstmt = getConnection().prepareStatement(sql);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 根据id查询一条记录
     */
    public ResultSet getById(int id) {
        String sql = "SELECT * FROM users WHERE id = ?";
        try {
            pstmt = getConnection().prepareStatement(sql);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    /**
     * 关闭连接，释放资源
     */
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
