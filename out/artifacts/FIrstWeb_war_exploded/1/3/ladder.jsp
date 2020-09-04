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
    <title>ladder</title>
</head>
<body>
<%!
    public double getArea(double top, double bottom, double height) {
        return (top + bottom) * height / 2;
    }
%>
<%
    String top = request.getParameter("top");
    String bottom = request.getParameter("bottom");
    String height = request.getParameter("height");
    double a = Double.parseDouble(top);
    double b = Double.parseDouble(bottom);
    double c = Double.parseDouble(height);
%>
<br>梯形上底:<%=top%>
<br>梯形下底：<%=bottom%>
<br>梯形高：<%=height%>
<br>梯形的面积：<%=getArea(a, b, c)%>
</body>
</html>
