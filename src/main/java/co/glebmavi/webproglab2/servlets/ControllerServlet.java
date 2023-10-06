package co.glebmavi.webproglab2.servlets;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;
import co.glebmavi.webproglab2.beans.HitHistory;
import java.util.Date;

@WebServlet("/controller")
public class ControllerServlet extends jakarta.servlet.http.HttpServlet {

    private final HitHistory hitHistory;


    public ControllerServlet() {
        hitHistory = new HitHistory();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long startTime = new Date().getTime();

        String x = request.getParameter("X");
        String y = request.getParameter("Y");
        String r = request.getParameter("R");

        if (x == null || y == null || r == null) {
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            request.getServletContext().getRequestDispatcher("/areaCheck").forward(request, response);
        }
    }
}
