<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/17
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
</head>
<body>
<%
    double r = 3, top = 2, bottom = 5, height = 2;
%>
<jsp:include page="circle.jsp">
    <jsp:param name="circleR" value="<%=r%>"/>
</jsp:include>
<br>
<jsp:include page="ladder.jsp">
    <jsp:param name="top" value="<%=top%>"/>
    <jsp:param name="bottom" value="<%=bottom%>"/>
    <jsp:param name="height" value="<%=height%>"/>
</jsp:include>
</body>
</html>
