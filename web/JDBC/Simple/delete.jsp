<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/15
  Time: 18:46
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

    int id = Integer.parseInt(request.getParameter("id"));

    Connection conn = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    try{
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop?serverTimezone=UTC","root","123456");
        String sql = "DELETE FROM users WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,id);
        int affectRows = pstmt.executeUpdate();
        if(affectRows>0)
            out.print("删除用户成功");
        else
            out.print("删除用户失败");
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