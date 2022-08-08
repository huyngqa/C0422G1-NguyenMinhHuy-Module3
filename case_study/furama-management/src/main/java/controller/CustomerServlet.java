package controller;

import model.Customer;
import model.TypeCustomer;
import service.CustomerService;
import service.TypeCustomerService;
import service.impl.CustomerServiceImpl;
import service.impl.TypeCustomerServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();
    private TypeCustomerService typeCustomerService = new TypeCustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "add":
                showFormAddCustomer(request, response);
                break;
            case "edit":
                showFormEditCustomer(request, response);
                break;
            default:
                showListCustomer(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionCustomer = request.getParameter("actionCustomer");
        if (actionCustomer == null) {
            actionCustomer = "";
        }
        switch (actionCustomer) {
            case "add":
                addCustomer(request, response);
                break;
            case "edit":
                editCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "search":
                searchCustomerByName(request, response);
                break;
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = customerService.findAllCustomer();
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAddCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<TypeCustomer> typeCustomerList = typeCustomerService.findAllTypeCustomer();
        request.setAttribute("typeCustomerList", typeCustomerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/add.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormEditCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<TypeCustomer> typeCustomerList = typeCustomerService.findAllTypeCustomer();
        request.setAttribute("typeCustomerList", typeCustomerList);
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.findCustomerById(id);
        request.setAttribute("customer", customer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/edit.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        int typeCustomerId = Integer.parseInt(request.getParameter("type_customer"));
        TypeCustomer typeCustomer = typeCustomerService.getTypeCustomerById(typeCustomerId);
        String name = request.getParameter("name");
        LocalDate birthDay = LocalDate.parse(request.getParameter("birth_day"));
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String idCard = request.getParameter("id_card");
        String tel = request.getParameter("tel");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(name, birthDay, idCard, tel, email, address, typeCustomer, gender);
        boolean checkRow = customerService.addNewCustomer(customer);
        if (checkRow) {
            request.setAttribute("message", "Successfully added customer: " + name);
        } else {
            request.setAttribute("message", "Failed process");
        }
        showFormAddCustomer(request, response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        customerService.deleteCustomerById(id);
        try {
            response.sendRedirect("/customer");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int typeCustomerId = Integer.parseInt(request.getParameter("type_customer"));
        TypeCustomer typeCustomer = typeCustomerService.getTypeCustomerById(typeCustomerId);
        String name = request.getParameter("name");
        LocalDate birthDay = LocalDate.parse(request.getParameter("birth_day"));
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String idCard = request.getParameter("id_card");
        String tel = request.getParameter("tel");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, name, birthDay, idCard, tel, email, address, typeCustomer, gender);
        boolean checkRow = customerService.editCustomer(customer);
        if (checkRow) {
            request.setAttribute("message", "Successfully updated customer: " + name);
        } else {
            request.setAttribute("message", "Failed process");
        }
        showListCustomer(request, response);
    }

    private void searchCustomerByName(HttpServletRequest request, HttpServletResponse response) {
        String searchName = request.getParameter("searchCustomer");
        List<Customer> customers = customerService.searchCustomerByName(searchName);
        request.setAttribute("customers", customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
