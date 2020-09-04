<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/28
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>editSave</title>
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
    int id = Integer.parseInt(request.getParameter("id"));
    int affectRows = userBean.update(username, userpassword, sex, tel, email, id);
    if (affectRows > 0)
        out.print("用户信息修改成功");
    else
        out.print("用户信息修改失败");
    userBean.close();
%>
</body>
</html>
