<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("username") == null)
        out.print("<script>alert('登录超时或者没有登录!');window.location.href='login.jsp';</script>");
    else {
%>
<html>
<head>
    <title>home</title>
</head>
<body>
<h1><%=session.getAttribute("username")%>，欢迎登陆home</h1>
</body>
</html>
<%
    }
%>