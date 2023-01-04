import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//CONTROLLER 2
    @WebServlet("/ads")
    public class ViewAdServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Ads adsDao = DaoFactory.getAdsDao();
            List<Ad> ads = adsDao.all();
            request.setAttribute("ads", ads);
            request.getRequestDispatcher("/ads.jsp").forward(request, response);
        }
}
