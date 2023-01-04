<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Login Here</h1>
        <form action="/login.jsp" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" type="password">
            </div>
            <input type="submit" value="Log In">
        </form>
    </div>
</body>
</html>
