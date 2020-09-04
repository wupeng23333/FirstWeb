<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
</body>
</html>
