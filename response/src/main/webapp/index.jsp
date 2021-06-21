<html>
<body>
<h2>Hello World!</h2>
<%--${pageContext.request.contextPath} for project --%>
<form action="${pageContext.request.contextPath}/login" method="get">
    name: <input type="text" name="username"><br>
    pwd: <input type="password" name="password"><br>
    <input type="submit">
</form>
</body>
</html>
