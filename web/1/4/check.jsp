<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/18
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String category = request.getParameter("category");
    if ("0".equals(category)) {
%>
<jsp:forward page="user.jsp">
    <jsp:param name="usernaem" value="<%=username%>"/>
</jsp:forward>
<%
} else {
%>
<jsp:forward page="login.jsp">
    <jsp:param name="usernaem" value="<%=username%>"/>
</jsp:forward>
<%
    }
%>
</body>
</html>
