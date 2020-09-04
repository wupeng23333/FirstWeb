<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/5/20
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body>
<form action="RegisterServlet" method="post">
    用户名： <input type="text" name="username"> <br>
    密码： <input type="password" name="userpassword"> <br>
    <input type="submit" value="注册">
</form><br>
<a href="login.jsp">登陆</a>
</body>
</html>
