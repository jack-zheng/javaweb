<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2021/6/30
  Time: 0:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<% int count = 1; %>
<p>count: ${count}</p>

<% request.setAttribute("k", "v"); %>
<% String val = (String) request.getAttribute("k"); %>
val = <%= val%><br>
val=${val}<br>
200/10=${200/10}
</body>
</html>
