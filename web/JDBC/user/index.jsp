<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>JSP中直接操作MySQL</title>
</head>
<body>
<%
    int pageSize = 3;   //每页显示的记录数
    int pageNum = 1;    //页码，默认显示第一页
    //接收URL中的pageNum参数值
    if(request.getParameter("pageNum")!=null){
        pageNum = Integer.parseInt(request.getParameter("pageNum"));
    }
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    }catch (ClassNotFoundException e){
        e.printStackTrace();
    }
    try{
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_eshop","root","root");
        String sql = "SELECT * FROM users LIMIT "+(pageNum-1)*pageSize+","+pageSize;
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
%>
<table border='1' width='600'>
    <tr><td>ID</td><td>用户名</td><td>姓名</td><td>性别</td><td>邮箱</td><td>操作</td></tr>
    <%
        //out.print("<table border='1' width='600'>");
        //out.print("<tr><td>ID</td><td>用户名</td><td>姓名</td><td>性别</td><td>邮箱</td><td>操作</td></tr>");
        while(rs.next()){
    %>
    <tr><td><%=rs.getInt("id")%></td>
        <td><%=rs.getString("username")%></td>
        <td><%=rs.getString("userpassword")%></td>
        <td><%=rs.getString("sex")%></td>
        <td><%=rs.getString("email")%></td>
        <td><a href="del.jsp?id=<%=rs.getInt("id")%>">删除</a>|<a href="edit.jsp?id=<%=rs.getInt("id")%>">修改</a></td>
    </tr>
    <%
            //          out.print("<tr><td>"+rs.getInt("id")+
//                  "</td><td>"+rs.getString("username")+
//                  "</td><td>"+rs.getString("userpassword")+
//                  "</td><td>"+rs.getString("sex")+
//                  "</td><td>"+rs.getString("email")+
//                  "</td><td>删除|修改</td></tr>");
        }
    %>
</table>
<table>
    <tr>
        <td><a href="index.jsp?pageNum=<%=pageNum-1%>">上一页</a></td>
        <td><a href="index.jsp?pageNum=<%=pageNum+1%>">下一页</a></td>
    </tr>
</table>
<%
        //out.print("</table>");
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