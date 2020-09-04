<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>JSP中直接操作MySQL</title>
</head>
<body>
<jsp:useBean id="userBean" scope="page" class="cn.edu.zust.bean.jsp.UserBean"></jsp:useBean>
<%
    request.setCharacterEncoding("UTF-8");

    int id = Integer.parseInt(request.getParameter("id"));
    int affectRows = userBean.delete(id);
    if(affectRows>0)
        out.print("删除用户成功");
    else
        out.print("删除用户失败");
    userBean.close();

%>
</body>
</html>