<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/6
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("username") == null)
        out.print("<script>alert('注册超时或者没有注册!');window.location.href='login.jsp';</script>");
    else {
%>
<html>
<head>
    <title>index</title>
</head>
<body>
<h1>注册成功！</h1>
<h2>欢迎您,<%=session.getAttribute("username")%><br>
你的电话号码为，<%=session.getAttribute("tel")%></h2>
</body>
</html>
<%
    }
%>