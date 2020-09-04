<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/1
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="cn.edu.zust.bean.jsp.CircleBean" %>
<html>
<head>
    <title>Circle</title>
</head>
<body>
<form action="Circle.jsp" method="post">
    半径：<input type="text" name="r"><br>
    <input type="submit" value="提交">
</form>
<jsp:useBean id="circleBean" scope="page" class="cn.edu.zust.bean.jsp.CircleBean"/>
<jsp:setProperty name="circleBean" property="r" param="r"/>
<%
    circleBean.circleBean();
%>
圆的面积：<jsp:getProperty name="circleBean" property="area"/><br>
圆的周长：<jsp:getProperty name="circleBean" property="length"/>
</body>
</html>
