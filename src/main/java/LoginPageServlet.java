import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//CONTROLLER 1
public class LoginPageServlet {
    @WebServlet(name = "LoginServlet", urlPatterns = "/login")
    class LoginServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            response.setContentType("text/html");
            String user = request.getParameter("username");
            String userPassword = request.getParameter("password");
                if(user.equals("root") && userPassword.equals("codeup")){
                    response.sendRedirect("/ads");
                }
        }
    }
}
