<%--
  Created by IntelliJ IDEA.
  User: brittney
  Date: 12/15/22
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%--page directive--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--initallizer --%>
<%! int counter = 0; %>

<% counter += 1; %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>The current count is <%= counter %>.</h1>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>