<%--
  Created by IntelliJ IDEA.
  User: wupeng
  Date: 2020/4/2
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简易计算器</title>
    <link rel="stylesheet" href="css/calculator.css" />
</head>
<body>
<div id="calculator">
    <h1>简易计算器</h1>
    <div id="display">
        <p>
            <jsp:useBean id="calculatorBean" scope="page" class="cn.edu.zust.bean.jsp.Calculator"></jsp:useBean>
            <jsp:setProperty name="calculatorBean" property="*"></jsp:setProperty>
            <% calculatorBean.calculate(); %>
            计算结果：
            <jsp:getProperty name="calculatorBean" property="firstNum"></jsp:getProperty>
            <jsp:getProperty name="calculatorBean" property="operator"></jsp:getProperty>
            <jsp:getProperty name="calculatorBean" property="secondNum"></jsp:getProperty>
            =
            <jsp:getProperty name="calculatorBean" property="result"></jsp:getProperty>
        </p>
    </div>
    <form action="cal.jsp" method="post">
        <table id="calArea">
            <tr>
                <td><input type="text" name="firstNum" class="inputNum"></td>
                <td>
                    <select name="operator" class="operator">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="*">*</option>
                        <option value="/">/</option>
                    </select>
                </td>
                <td><input type="text" name="secondNum" class="inputNum"></td>
            </tr>
            <tr>
                <td colspan="3"><input type="submit" value="计算" class="btn" /><input type="reset" value="重置" class="btn" /></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>