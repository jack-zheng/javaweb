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
    <title>corewhen</title>
</head>
<body>

<c:set var="score" value="85"/>
<c:choose>
    <c:when test="${score>=90}">
        优
    </c:when>
    <c:when test="${score>=80}">
        liang
    </c:when>
    <c:when test="${score<80}">
        yiban
    </c:when>
</c:choose>
</body>
</html>
