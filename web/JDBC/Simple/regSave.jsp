<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/15
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>regSave</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String userpassword = request.getParameter("userpassword");
    String fullname = request.getParameter("fullname");
    String sex = request.getParameter("sex");
    String email = request.getParameter("email");

    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    try{
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop?serverTimezone=UTC","root","root");
        String sql = "INSERT INTO users(username,userpassword,fullname,sex,email) VALUES(?,?,?,?,?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,username);
        pstmt.setString(2,userpassword);
        pstmt.setString(3,fullname);
        pstmt.setString(4,sex);
        pstmt.setString(5,email);
        int affectRows = pstmt.executeUpdate();
        if(affectRows>0)
            out.print("新增用户成功");
        else
            out.print("新增用户失败");
    }catch (SQLException e){
        e.printStackTrace();
    }finally {
        try {
            if(pstmt!=null)
                pstmt.close();
            if(conn!=null)
                conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }

    }


%>
</body>
</html>