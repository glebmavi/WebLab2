package co.glebmavi.webproglab2.servlets;

import jakarta.servlet.annotation.WebServlet;

import java.util.logging.Logger;

@WebServlet("/result")
public class ResultServlet extends jakarta.servlet.http.HttpServlet {

    private static final Logger logger = Logger.getLogger(ResultServlet.class.getName());

    @Override
    protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, java.io.IOException {
        logger.info("doPost() called");
        logger.info("Redirecting to result.jsp");
        getServletContext()
                .getRequestDispatcher("/result.jsp")
                .forward(request, response);
    }

    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, java.io.IOException {
        logger.info("doGet() called");
        logger.info("Redirecting to result.jsp");
        request.setAttribute("lang", request.getParameter("lang"));
        request.setAttribute("currentHitHistory", request.getSession().getAttribute("currentHitHistory"));
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
