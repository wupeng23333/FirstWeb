<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/11
  Time: 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<h1>九九乘法表</h1>
<table border="1">
    <%
        for (int i = 1; i <= 9; i++) {%>
    <tr>
        <%for (int j = 1; j <= 9; j++) {%>
        <td>
            <% if (j <= i)
                out.println(j + "*" + i + "=" + i * j);
            %>
        </td>
        <%}%>
    </tr>
    <%}%>
</table>
</body>
</html>
