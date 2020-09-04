<%@ page import="javax.swing.*" %><%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>receiveNumber</title>
</head>
<body>
<%
    String numberOne = request.getParameter("numberOne");
    String numberTwo = request.getParameter("numberTwo");
    String operator = request.getParameter("operator");
    double a = Double.parseDouble(numberOne);
    double b = Double.parseDouble(numberTwo);
    double r = 0;
    switch (operator) {
        case "+":
            r = a + b;
            break;
        case "-":
            r = a - b;
            break;
        case "*":
            r = a * b;
            break;
        case "/":
            r = a / b;
            break;
    }
    out.println(numberOne + operator + numberTwo + "=" + r);
%>

</body>
</html>

