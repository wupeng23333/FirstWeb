<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>regSave</title>
</head>
<body>
<jsp:useBean id="userBean" scope="page" class="cn.edu.zust.bean.jsp.UserBean"/>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String userpassword = request.getParameter("userpassword");
    String tel = request.getParameter("tel");
    String sex = request.getParameter("sex");
    String email = request.getParameter("email");
    if (userBean.check(username, tel, email)) {
        int affectRows = userBean.insert(username, userpassword, sex, tel, email);
        if (affectRows > 0)
            out.print("注册成功");
        else
            out.print("注册失败");
        userBean.close();
    }
%>
</body>
</html>