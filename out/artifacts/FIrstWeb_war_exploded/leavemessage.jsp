<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/5/20
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("login") == null)
        out.print("<script>alert('登录超时或者没有登录!');window.location.href='login.jsp';</script>");
    else {
%>
<html>
<head>
    <title>leavemessage</title>
</head>
<body>
<form action="LeaveMessageServlet" method="post">
    <table border="1">
        <caption>填写留言信息</caption>
        <tr>
            <td>留言标题</td>
            <td><input type="text" name="title"/></td>
        </tr>
        <tr>
            <td>留言内容</td>
            <td><input type="text" name="message"></td>
        </tr>
    </table>
    <input type="submit" value="提交"/>
</form>
<a href="message.jsp">返回留言板界面</a>
</body>
</html>
<%
    }
%>