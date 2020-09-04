<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/17
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>circle</title>
</head>
<body>
<%!
    public double getArea(double r) {
        return Math.PI * r * r;
    }
%>
<%
    String circleR = request.getParameter("circleR");
    double r = Double.parseDouble(circleR);
%>
<br>圆的半径：<%=r%>
<br>圆的面积:<%=getArea(r)%>
</body>
</html>
