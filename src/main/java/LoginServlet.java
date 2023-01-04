import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//CONTROLLER 1
public class LoginServlet {
    @WebServlet(name = "loginServlet", urlPatterns = "/login")
    class loginServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
            if (request.getMethod().equalsIgnoreCase("post")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                if (username.equals("admin") && password.equals("password")) {
                    response.sendRedirect("/ads");
                }
            }
        }
    }
}
