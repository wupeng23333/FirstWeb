<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>doLogin</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("admin") && password.equals("123456")) {
        session.setAttribute("username",username);
       // response.sendRedirect("index.jsp");
        out.print("<script>alert('登录成功!');window.location.href='index.jsp';</script>");
    } else
        //response.sendRedirect("login.jsp");
        out.print("<script>alert('用户名或密码错误!');window.location.href='login.jsp';</script>");
%>
</body>
</html>
