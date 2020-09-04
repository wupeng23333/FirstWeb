<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/3/22
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>inputNumber</title>
</head>
<body>
<form action="receiveNumber.jsp" method="post">
    <input type="text" name="numberOne">
    <select name="operator">
        <option value="+">+<option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <input type="text" name="numberTwo">
    <br>
    <input type="submit" name="submit">
</form>
</body>
</html>
