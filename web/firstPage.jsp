<%@ page import="java.nio.charset.IllegalCharsetNameException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<% String operand = request.getParameter("operand");
    String result = "";
    int number1 = 0;
    int number2 = 0;
    int tot = 0;
    if (request.getParameter("number1") != null && request.getParameter("number2") != null) {
        number1 = Integer.parseInt(request.getParameter("number1"));
        number2 = Integer.parseInt(request.getParameter("number2"));
    }
    if (operand != null && operand.equals("+")) {
        tot = number1 + number2;
        result = String.valueOf(number1) + "+" + String.valueOf(number2) + "=" + String.valueOf(tot);
    } else if (operand != null && operand.equals("-")) {
        tot = number1 - number2;
        result = String.valueOf(number1) + "-" + String.valueOf(number2) + "=" + String.valueOf(tot);
    } else if (operand != null && operand.equals("*")) {
        tot = number1 * number2;
        result = String.valueOf(number1) + "*" + String.valueOf(number2) + "=" + String.valueOf(tot);
    } else if (operand != null && operand.equals("/")) {
        tot = number1 / number2;
        result = String.valueOf(number1) + "/" + String.valueOf(number2) + "=" + String.valueOf(tot);
    }
%>

<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>Calculator</title>
</head>
<body>
<form action="firstPage.jsp" method="POST">
    <label for="number1">Введите числа:</label> <br>
    <div class="input">
        <input name="number1" id="number1" placeholder="1" value=<%= number1 %>>

        <br>

        <input name="number2" id="number2" placeholder="1" value=<%= number2 %>>

        <br>
    </div>
    <div class="button">
        <input type="submit" id="operand" name="operand" value="+">
        <input type="submit" id="operand" name="operand" value="-">
        <input type="submit" id="operand" name="operand" value="*">
        <input type="submit" id="operand" name="operand" value="/">
        <br>
        <label for="result" id="res">Результат:</label> <br>

        <input name="result" id="result" readonly="readonly" type="text" value=<%= result %>>


        <%--<%--%>
        <%--if (request.getParameter("number1") != null && request.getParameter("number2") != null) {--%>
        <%--int number1 = Integer.parseInt(request.getParameter("number1"));--%>
        <%--int number2 = Integer.parseInt(request.getParameter("number2"));--%>

        <%--int tot = number1 + number2;--%>
        <%--out.println(String.valueOf(number1) + "+" + String.valueOf(number2) + "=" + String.valueOf(tot));--%>
        <%--}--%>
        <%--%>/>--%>
    </div>
</form>
</body>
</html>