<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/15
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    int id = Integer.parseInt(request.getParameter("id"));
    String username = null;
    String userpassword = null;
    String fullname = null;
    String sex = null;
    String email = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    try{
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop?serverTimezone=UTC","root","123456");
        String sql = "SELECT * FROM users WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1,id);
        rs = pstmt.executeQuery();
        while(rs.next()){
            username = rs.getString("username");
            userpassword = rs.getString("userpassword");
            fullname = rs.getString("fullname");
            sex = rs.getString("sex");
            email = rs.getString("email");
        }
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
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="editSave.jsp" method="post">
    用户名：<input type="text" name="username" value="<%=username%>" /><br/>
    密码：<input type="password" name="userpassword" value="<%=userpassword%>" /><br/>
    姓名：<input type="text" name="fullname" value="<%=fullname%>" /><br/>
    性别：<input type="radio" name="sex" value="男">男
    <input type="radio" name="sex" value="女">女<br/>
    邮箱：<input type="text" name="email"  value="<%=email%>"/><br/>
    <input type="submit" value="立即注册">
</form>
</body>
</html>
