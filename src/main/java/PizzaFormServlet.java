import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaFormServlet", urlPatterns = "/pizza-order")
public class PizzaFormServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/pizza-order.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        String crust = request.getParameter("crust");
        String sauce = request.getParameter("sauce");
        String size = request.getParameter("size");
        String pep = request.getParameter("pepperoni");
        String address = request.getParameter("address");
        System.out.println(crust);
        System.out.println(sauce);
        System.out.println(size);
        System.out.println(pep);
        System.out.println(address);
    }
}
