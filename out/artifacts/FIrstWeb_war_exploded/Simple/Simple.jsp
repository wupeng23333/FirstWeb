<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/3
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="cn.edu.zust.bean.jsp.SimpleBean" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="simple" scope="page" class="cn.edu.zust.bean.jsp.SimpleBean"/>
<jsp:setProperty name="simple" property="name" value="李四"/>
<jsp:setProperty name="simple" property="age" value="10"/>
<%
    //    SimpleBean simple = new SimpleBean();
//    simple.setName("张三");
//    simple.setAge(20);
%>
姓名：<jsp:getProperty name="simple" property="name"/><br/>
年龄：<jsp:getProperty name="simple" property="age"/>
</body>
</html>
