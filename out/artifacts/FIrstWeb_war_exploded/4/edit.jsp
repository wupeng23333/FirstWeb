<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/28
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<jsp:useBean id="userBean" scope="page" class="cn.edu.zust.bean.jsp.UserBean"/>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    String username = null;
    String userpassword = null;
    String sex = null;
    String tel = null;
    String email = null;
    ResultSet rs = userBean.getById(id);
    try {
        while (rs.next()) {
            username = rs.getString("username");
            userpassword = rs.getString("userpassword");
            sex = rs.getString("sex");
            tel = rs.getString("tel");
            email = rs.getString("email");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        userBean.close();
    }
%>
<html>
<head>
    <title>edit</title>
</head>
<body>
<form action="editSave.jsp" method="post">
    <input type="hidden" name="id" value="<%=id%>"/>
    用户名：<input type="text" name="username" value="<%=username%>"/><br/>
    密码：<input type="password" name="userpassword value="<%=userpassword%>"/><br/>
    性别：<input type="radio" name="sex" value="男" <% if(sex.equals("男")) out.print("checked='checked'");%>>男
    <input type="radio" name="sex" value="女"<% if(sex.equals("女")) out.print("checked='checked'");%>>女<br/>
    手机号码：<input type="tel" name="tel" value="<%=tel%>"><br/>
    邮箱：<input type="text" name="email" value="<%=email%>"/><br/>
    <input type="submit" value="立即注册">
</form>
</body>
</html>
