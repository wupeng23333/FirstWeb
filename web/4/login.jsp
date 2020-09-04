<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="doLogin.jsp" method="post">
    用户名：<input type="text" name="username"/><br/>
    密码：<input type="password" name="userpassword"/><br/>
    类型:<input type="radio" name="category" value="0"/>会员
    <input type="radio" name="category" value="1"/>管理员<br>
    <input type="submit" value="登陆">
</form>
</body>
</html>
