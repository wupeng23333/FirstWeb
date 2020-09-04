<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>doReg</title>
</head>
<body>
<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    out.println("用户提交的用户名为："+username);
    out.println("用户提交的密码为:"+password);
%>
</body>
</html>
