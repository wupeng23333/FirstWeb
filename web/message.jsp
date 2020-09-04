<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/5/20
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.edu.zust.bean.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="cn.edu.zust.dao.LoginDAO" %>
<%@ page import="cn.edu.zust.bean.Login" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>message</title>
</head>
<body>
<%
    Login login =(Login) session.getAttribute("login");
    if (login==null)
        out.print("游客，欢迎您！");
    else {
        out.print(login.getUsername()+",欢迎您！");
    }
%>
<table border="1">
    <caption>所有留言信息</caption>
    <tr>
        <td>留言人姓名</td>
        <td>留言日期</td>
        <td>留言标题</td>
        <td>留言内容</td>
    </tr>
    <%
        List<Message> arrayList = new LoginDAO().getAll();
        if(arrayList!=null){
            for(Message message:arrayList){

    %>
    <tr><td><%= message.getUsername() %></td>
        <td><%= message.getTime().toString() %></td>
        <td><%= message.getTitle() %></td>
        <td><%= message.getMessage() %></td></tr>
    <%
            }
        }
    %>
</table>
<a href="login.jsp">登陆</a>
<a href="register.jsp">注册</a>
<a href="leavemessage.jsp">留言</a>
</body>
</html>
