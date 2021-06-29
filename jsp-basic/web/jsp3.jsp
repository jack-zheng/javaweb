<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2021/6/29
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error/500.jsp" %>
<html>
<head>
    <title>page2</title>
</head>
<body>

<%@include file="common/header.jsp"%>
<h> 我是身体 </h>
<%@include file="common/footer.jsp"%>

<hr>

<jsp:include page="/common/header.jsp"/>
<h> 我是身体 </h>
<jsp:include page="/common/footer.jsp"/>

</body>
</html>
