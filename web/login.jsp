<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/5/16
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="LoginServlet" method="post">
    用户名： <input type="text" name="username"> <br>
    密码： <input type="password" name="userpassword"> <br>
    <input type="submit" value="登录">
</form><br>
<a href="register.jsp">注册</a>
</body>
</html>
