<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2021/6/29
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

<% int name = 1; %>
<p>a: ${name}</p>
<%%>

  <%= new java.util.Date() %>
  <hr>
  <%
    int sum = 0;
    for (int i = 0; i < 100; i++) {
      sum+=i;
    }
    out.println("result = " + sum);
  %>
  <p>sum: ${sum}</p>
  <p>Test EL: ${2000 / 20}</p>
<hr>
  <%
    int x = 10;
    out.print("x = " + x);
  %>
  <p> 这是片段分割 </p>
  <%
    int y = 10;
    out.print("y = " + y);
  %>
  <hr>

  <% for (int i = 0; i < 3; i++) { %>
  <h1>Hello <%=i%></h1>
  <% } %>

  <%!
    static {
      System.out.println("Loading servlet!");
    }
    private int globalVar = 0;

    public void test() {
      System.out.println("into method test...");
    }
  %>
  </body>
</html>
