<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="java.io.IOException" %>
<%--
  Created by IntelliJ IDEA.
  User: brittney
  Date: 12/16/22
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Brittney's Pizza Shack</title>
</head>
<body>
<form action="/pizza-order" method="POST">
    <h1>Pizza Order Form</h1>
        <br>
    <h2>Crust Type</h2>
    <select name ="crust">
        <option>Pan</option>
        <option>Hand-Tossed</option>
    </select>
        <br>
    <h2>Sauce Type</h2>
    <select name="sauce">
        <option>Marinara</option>
        <option>Pesto</option>
        <option>Four-cheese</option>
    </select>
        <br>
    <h2>Toppings</h2>
    <h4>pepperoni</h4><input type="checkbox" name="pepperoni">
    <h4>cheese</h4><input type="checkbox" name="cheese">
    <h4>meat-lovers</h4><input type="checkbox" name="meats">
        <br>
    <label>Pizza Size</label>
    <select name = "size">
        <option>Small</option>
        <option>Medium</option>
        <option>Large</option>
        <option>Extra-Large</option>
    </select>
    <h2>Please enter your address</h2>
    <input type="text" name="address">
    <input type="submit" value="Submit">
</form>
<h1>${address} ${pan} </h1>
</body>
</html>
