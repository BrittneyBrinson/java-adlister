<%--
  Created by IntelliJ IDEA.
  User: brittney
  Date: 1/25/23
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick a color !</title>
</head>
<body>
<form>
    <h2>Please enter your favorite color below!</h2>
    <form action="/pick-color" method="post">
        <input name="color" type="text"/>
        <button>Submit</button>
    </form>
</form>
</body>
</html>
