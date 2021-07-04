<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2021/6/30
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>coreif</title>
</head>
<body>

<h4>if test</h4>

<hr>
<form action="coreif.jsp" method="get">
    <input type="text" name="username" value="${param.username}">
    <input type="submit" value="submit">
</form>

<c:if test="${param.username=='admin'}" var="isAdmin">
    <c:out value="welcome, administrator"/>
</c:if>

<c:out value="${isAdmin}"/>
</body>
</html>
