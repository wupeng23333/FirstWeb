<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/13
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<%
    out.println("<h1>九九乘法表</h1>");
    out.println("<table border=\"1\">");
    for (int i = 1; i <= 9; i++) {
        out.print("<tr>");
        for (int j = 1; j <= 9; j++) {
            out.print("<td>");
            if (j <= i)
                out.print(j + "*" + i + "=" + i * j);
            out.println("<td>");
        }
        out.println("</tr>");
    }
    out.println("</table>");
%>
</body>
</html>
