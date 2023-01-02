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
<%
    @WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order.jsp")
    class PizzaServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            String sauce = request.getParameter("sauce");
            String crust = request.getParameter("crust");
            request.setAttribute("sauce", sauce);
            request.setAttribute("crust", crust);
            request.getRequestDispatcher("/pizza-order.jsp").forward(request,response);
            System.out.println(crust);
            System.out.println(sauce);

        }
    }
%>
<html>
<head>
    <title>Brittney's Pizza Shack</title>
</head>
<body>
<form action="/pizza-order.jsp" method="POST">
    <h1>Pizza Order Form</h1>
        <br>
    <h2>Crust Type</h2>
    <select name ="crust">
        <option name="pan">Pan</option>
        <option name="hand-tossed">Hand-Tossed</option>
    </select>
        <br>
    <h2>Sauce Type</h2>
    <select name="sauce">
        <option name="red">Marinara</option>
        <option name="pesto">Pesto</option>
        <option name="four">Four-cheese</option>
    </select>
        <br>
    <h2>Toppings</h2>
    <h4>pepperoni</h4><input type="checkbox" name="pepperoni">
    <h4>cheese</h4><input type="checkbox" name="cheese">
    <h4>meat-lovers</h4><input type="checkbox" name="meats">
        <br>
    <label>Pizza Size</label>
    <select>
        <option name="small">Small</option>
        <option name="medium">Medium</option>
        <option name="large">Large</option>
        <option name="extra">Extra-Large</option>
    </select>
    <h2>Please enter your address</h2>
    <input type="text" name="address">
    <input type="submit" value="Submit">
</form>
<h1>${address} ${pan} </h1>
</body>
</html>
