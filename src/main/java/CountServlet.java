import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CountServlet", urlPatterns = "/count") //I have "/count" already mapped somewhere
public class CountServlet extends HttpServlet {
    protected int x = 0;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        x += 1;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>This page was viewed: " + x + " times</h1>");
    }

}
