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
    <title>demo01</title>
</head>
<body>

<%
    pageContext.setAttribute("name1", "val1"); // 一个页面中有效
    request.setAttribute("name2", "val2"); // 一次请求中有效
    session.setAttribute("name3", "val3"); // 一次会话中有效
    application.setAttribute("name4", "val4"); // 服务器工作时一直有效

    String n1 = (String)pageContext.findAttribute("name1");
%>

<h1>取得值为</h1>
<h3>s1: ${name1}</h3>
<h3>s1<%=n1%></h3>
<h3>${name2}</h3>
<h3>${name3}</h3>
<h3>${name4}</h3>
<h3>${name5}</h3>

</body>
</html>
