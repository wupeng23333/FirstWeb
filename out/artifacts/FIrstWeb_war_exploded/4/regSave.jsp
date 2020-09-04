<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/22
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    String sex = request.getParameter("sex");
    String tel = request.getParameter("tel");
    String email = request.getParameter("email");
    if(userBean.regCheck(username,tel,email)==1){
    int affectRows = userBean.insert(username,userpassword,sex,tel,email);
    if(affectRows>0)
        out.print("注册成功");
    else
        out.print("注册失败");
    }
    else out.print("<script>alert('用户名已存在或输入不合法！');window.location.href='reg.jsp';</script>");
    userBean.close();
%>
</body>
</html>
