<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
</head>
<body>
<h1>欢迎您:<%=session.getAttribute("username")%></h1>
<a href="logout.jsp">logout</a>
</body>
</html>
