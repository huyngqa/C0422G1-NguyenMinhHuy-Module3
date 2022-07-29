package servlet;

import service.CalculatorService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", value = "/calculate")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double num1 = Double.parseDouble(request.getParameter("num1"));
        double num2 = Double.parseDouble(request.getParameter("num2"));
        String operator = request.getParameter("operator");

        String result = CalculatorService.calculate(num1, num2, operator);
        RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
        request.setAttribute("num1", num1);
        request.setAttribute("num2", num2);
        request.setAttribute("operator", operator);
        request.setAttribute("result", result);

        dispatcher.forward(request, response);
    }
}
