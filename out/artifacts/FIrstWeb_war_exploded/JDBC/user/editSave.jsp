<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>JSP中直接操作MySQL</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String userpassword = request.getParameter("userpassword");
    String fullname = request.getParameter("fullname");
    String sex = request.getParameter("sex");
    String email = request.getParameter("email");
    int id = Integer.parseInt(request.getParameter("id"));

    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    try{
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop","root","root");
        String sql = "UPDATE users SET username=?,userpassword=?,fullname=?,sex=?,email=? WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,username);
        pstmt.setString(2,userpassword);
        pstmt.setString(3,fullname);
        pstmt.setString(4,sex);
        pstmt.setString(5,email);
        pstmt.setInt(6,id);
        int affectRows = pstmt.executeUpdate();
        if(affectRows>0)
            out.print("用户信息修改成功");
        else
            out.print("用户信息修改失败");
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