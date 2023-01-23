<%--
  Created by IntelliJ IDEA.
  User: brittney
  Date: 12/15/22
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login Form</title>
</head>
<body>
<%--The login.JSP goes with form actions so when users visit that url, they can see the login page or form on a JSP mapped to thay url.
Then that Get method gets mapped to the "/login" NO JSP with a SERVLET that handles the request POST -> GET--%>

<form method="post" action="/login.jsp">
    <label><p>Username</p></label>
    <input type="text" name="username" placeholder="Enter Username" required/>
    <label><p>Password</p></label>
    <input type="password" name="password" placeholder="Enter Password" required/>
    <input type="submit" value="Submit"/>
</form>
<%= request.getParameter("username") %>
<%= request.getParameter("password") %>
</body>
</html>
