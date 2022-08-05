package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FuramaServlet", urlPatterns = {"","/furama"})
public class FuramaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                break;
            default:
                goHome(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private void goHome(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect("index.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
