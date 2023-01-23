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
    <title>Title</title>
</head>
<body>
<%--The login.JSP goes with form actions so when users visit that url, they can see the login page or form on a JSP mapped to thay url.
Then that Get method gets mapped to the "/login" NO JSP with a SERVLET that handles the request POST -> GET--%>

<form method="post" action="/login.jsp">
    <label><p>Username</p></label>
    <input type="text" name="userName" placeholder="Enter Username" required/>
    <label><p>Password</p></label>
    <input type="password" name="password" placeholder="Enter Password" required/>
    <input type="submit" value="Submit"/>
</form>
<%= request.getParameter("userName") %>
<%= request.getParameter("password") %>


<c:choose>
    <c:when test="${request.getParameter('userName') == 'admin'}">
        <p>I am admin</p>
    </c:when>


    <c:when test="${true}">
        <p>I am admin</p>
    </c:when>

    <c:when test="${request.getParameter('userName') != 'admin'}">
        I am not an admin
    </c:when>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>



</c:choose>

</body>
</html>
