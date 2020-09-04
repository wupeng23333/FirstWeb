<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/23
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%
    if (session.getAttribute("username") == null)
        out.print("<script>alert('登录超时或者没有登录!');window.location.href='login.jsp';</script>");
    else {
%>
<html>
<head>
    <title>admin</title>
</head>
<body>
<jsp:useBean id="userBean" scope="page" class="cn.edu.zust.bean.jsp.UserBean"/>
<%
    int pageSize = 3;   //每页显示的记录数
    int pageNum = 1;    //页码，默认显示第一页
    //接收URL中的pageNum参数值
    if(request.getParameter("pageNum")!=null){
        pageNum = Integer.parseInt(request.getParameter("pageNum"));
    }
    ResultSet rs=userBean.getAll(pageSize,pageNum);
%>
<table border='1' width='600'>
    <tr><td>ID</td><td>用户名</td><td>性别</td><td>电话</td><td>邮箱</td><td>操作</td></tr>
    <%
       try {
        while(rs.next()){
    %>
    <tr><td><%=rs.getInt("id")%></td>
        <td><%=rs.getString("username")%></td>
        <td><%=rs.getString("sex")%></td>
        <td><%=rs.getString("tel")%></td>
        <td><%=rs.getString("email")%></td>
        <td><a href="delete.jsp?id=<%=rs.getInt("id")%>">删除</a>|<a href="edit.jsp?id=<%=rs.getInt("id")%>">修改</a></td>
    </tr>
    <%
        }
    %>
</table>
<table>
    <tr>
        <td><a href="admin.jsp?pageNum=<%=pageNum-1%>">上一页</a></td>
        <td><a href="admin.jsp?pageNum=<%=pageNum+1%>">下一页</a></td>
    </tr>
</table>
<%
    }catch (SQLException e){
           e.getStackTrace();
    }finally {
           userBean.close();
    }
%>
</body>
</html>
<%
    }
%>