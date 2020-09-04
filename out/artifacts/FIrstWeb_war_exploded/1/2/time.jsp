<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/13
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Date,java.text.SimpleDateFormat" %>
<html>
<head>
    <title>服务端时间显示</title>
</head>
<body>
<% Date date = new Date();
    SimpleDateFormat date1 = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
    SimpleDateFormat date2 = new SimpleDateFormat("HH");
    SimpleDateFormat date3 = new SimpleDateFormat("mm");
    out.println("服务端时间:" + date1.format(date));
    out.println("<br>");
    int a = Integer.parseInt(date2.format(date));
    int b = Integer.parseInt(date3.format(date));
    if (a >= 6 && a < 12 || a == 12 && b == 0)
        out.println("上午好");
    else if (a >= 12 && a < 18 || a == 18 && b == 0)
        out.println("下午好");
    else if (a >= 18 && a < 24 || a == 24 && b == 0)
        out.println("晚上好");
%>
</body>
</html>
