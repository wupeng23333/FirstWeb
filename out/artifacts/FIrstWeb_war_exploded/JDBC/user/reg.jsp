<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="regSave.jsp" method="post">
    用户名：<input type="text" name="username" /><br/>
    密码：<input type="password" name="userpassword" /><br/>
    姓名：<input type="text" name="fullname" /><br/>
    性别：<input type="radio" name="sex" value="男">男
    <input type="radio" name="sex" value="女">女<br/>
    邮箱：<input type="text" name="email" /><br/>
    <input type="submit" value="立即注册">
</form>
</body>
</html>