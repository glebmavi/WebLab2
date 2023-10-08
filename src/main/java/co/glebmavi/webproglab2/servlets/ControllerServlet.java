package co.glebmavi.webproglab2.servlets;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;
import co.glebmavi.webproglab2.beans.HitHistory;
import java.util.Date;
import java.util.logging.Logger;

@WebServlet("/controller")
@MultipartConfig
public class ControllerServlet extends jakarta.servlet.http.HttpServlet {

    private static final Logger logger = Logger.getLogger(ControllerServlet.class.getName());
    private HitHistory hitHistory;

    public ControllerServlet() {
        hitHistory = new HitHistory();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("doPost() called");
        long startTime = new Date().getTime();

        String[] x = request.getParameterValues("X");
        String y = request.getParameter("Y");
        String r = request.getParameter("R");

        if (x == null || y == null || r == null) {
            request.setAttribute("errorMessage", "Неверный формат данных");
            logger.info("Some data missing");
            request.setAttribute("hitHistory", hitHistory);
            getServletContext()
                    .getRequestDispatcher("/index.jsp")
                    .forward(request, response);
            return;
        }

        request.setAttribute("startTime", startTime);
        request.setAttribute("hitHistory", hitHistory);
        logger.info("Redirecting to areaCheck");
        getServletContext().getRequestDispatcher("/areaCheck").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("doGet() called");
        logger.info("Redirecting to index.jsp");
        request.setAttribute("hitHistory", hitHistory);
        request.getSession().setAttribute("hitHistory", hitHistory);
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("doRemove() called");
        logger.info("Redirecting to index.jsp");
        hitHistory = new HitHistory();
        request.setAttribute("hitHistory", hitHistory);
        request.getSession().setAttribute("hitHistory", hitHistory);
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
