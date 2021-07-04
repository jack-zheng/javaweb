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
jsptag2.jsp <br>
name: <%=request.getParameter("name")%><br>
age: <%=request.getParameter("age")%><br>

name: ${param.get("name")}<br>
age: ${param.get("age")}<br>

</body>
</html>
