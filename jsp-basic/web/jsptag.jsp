<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2021/6/29
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp tag</title>
</head>
<body>

<jsp:forward page="/jsptag2.jsp">
    <jsp:param name="name" value="jack"/>
    <jsp:param name="age" value="100"/>
</jsp:forward>
</body>
</html>
