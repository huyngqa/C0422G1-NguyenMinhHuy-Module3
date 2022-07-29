package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DisplayCustomerServlet", urlPatterns = {"", "/display"})
public class DisplayCustomerServlet extends HttpServlet {
    private List<Customer> customers = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customers.add(new Customer("Mai Văn Hoàn", LocalDate.parse("1983-08-20"), "Hà Nội", "resources/img/anh1.jpg"));
        customers.add(new Customer("Nguyễn Văn Nam", LocalDate.parse("1983-08-21"), "Bắc Giang", "resources/img/anh2.jpg"));
        customers.add(new Customer("Nguyễn Thái Hoà", LocalDate.parse("1983-08-22"), "Nam Định", "resources/img/anh3.jpg"));
        customers.add(new Customer("Trần Đăng Khoa", LocalDate.parse("1983-08-17"), "Hà Tây", "resources/img/anh4.jpeg"));
        customers.add(new Customer("Nguyễn Đình Thi", LocalDate.parse("1983-08-19"), "Hà Nội", "resources/img/anh5.jpeg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        request.setAttribute("customers", customers);
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
