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
    pageContext.setAttribute("name1", "val1");
    request.setAttribute("name2", "val2");
    session.setAttribute("name3", "val3");
    application.setAttribute("name4", "val4");
%>

<%
    String s1 = (String)pageContext.findAttribute("name1");
    out.print("s1 = " + s1);

    String s2 = (String)pageContext.findAttribute("name2");
    String s3 = (String)pageContext.findAttribute("name3");
    String s4 = (String)pageContext.findAttribute("name4");
    String s5 = (String)pageContext.findAttribute("name5");
%>
<h1>${s1}</h1>

<h1>取得值为</h1>
<h3>s1: ${s1}</h3>
<h3>${s2}</h3>
<h3>${s3}</h3>
<h3>${s4}</h3>
<h3>${s5}</h3>
<h3><%=s5%></h3>

</body>
</html>
