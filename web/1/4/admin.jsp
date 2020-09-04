<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/18
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
</head>
<body>
<%
    String username=request.getParameter("username");
%>
<h1>您好，<%=username%>;您是会员，欢迎登陆！！！</h1>
<%@include file="footer.jsp"%>
</body>
</html>
