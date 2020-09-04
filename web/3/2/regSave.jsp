<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/2
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="cn.edu.zust.bean.jsp.RegBean" %>
<html>
<head>
    <title>regSave</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String tel = request.getParameter("tel");
    if (username.equals("") || password.equals("") || tel.equals(""))
        out.print("<script>alert('输入信息为空');window.location.href='error.jsp';</script>");
    else if (password.length() <= 3)
        out.print("<script>alert('密码长度小于3个字符');window.location.href='error.jsp';</script>");
    else if (tel.matches("^[0-9]*$")) {
        session.setAttribute("username", username);
        session.setAttribute("tel", tel);
        response.sendRedirect("index.jsp");
        RegBean regBean = new RegBean();
        regBean.setName(username);
        regBean.setPassword(password);
        regBean.setTel(tel);
    } else
        out.print("<script>alert('手机号码不合法');window.location.href='error.jsp';</script>");
%>
</body>
</html>
