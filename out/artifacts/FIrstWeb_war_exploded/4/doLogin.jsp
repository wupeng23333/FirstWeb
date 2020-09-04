<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/26
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>doLogin</title>
</head>
<body>
<jsp:useBean id="userBean" scope="page" class="cn.edu.zust.bean.jsp.UserBean"/>
<%
    String username = request.getParameter("username");
    String userpassword = request.getParameter("userpassword");
    String category = request.getParameter("category");
    if (category.equals("1")) {
        if (userBean.loginCheck(username, userpassword)==1){
            session.setAttribute("username",username);
            session.setAttribute("userpassword",userpassword);
            out.print("<script>alert('登录成功!');window.location.href='admin.jsp';</script>");}
        else
            out.print("<script>alert('用户名或密码错误!');window.location.href='login.jsp';</script>");
    } else if (category.equals("0")) {
        if (userBean.loginCheck(username, userpassword)==1){
            session.setAttribute("username",username);
            session.setAttribute("userpassword",userpassword);
            out.print("<script>alert('登录成功!');window.location.href='user.jsp';</script>");}
        else
            out.print("<script>alert('用户名或密码错误!');window.location.href='login.jsp';</script>");
    }
    userBean.close();
%>
</body>
</html>
