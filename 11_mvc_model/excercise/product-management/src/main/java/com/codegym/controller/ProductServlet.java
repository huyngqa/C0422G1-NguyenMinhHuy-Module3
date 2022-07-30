package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.IProductService;
import com.codegym.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"", "/products"})
public class ProductServlet extends HttpServlet {
    private IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "update":
                showUpdateForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "details":
                showDetailsProductById(request, response);
                break;
            default:
                showAllListProduct(request, response);
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        String productId = request.getParameter("id");
        Product product = productService.findByProductById(productId);
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/delete.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        String productId = request.getParameter("id");
        Product product = productService.findByProductById(productId);
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/update.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDetailsProductById(HttpServletRequest request, HttpServletResponse response) {
        String productId = request.getParameter("id");
        Product product = productService.findByProductById(productId);
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/details.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAllListProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = productService.findAll();
        request.setAttribute("products", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addNewProduct(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                showListProductByName(request, response);
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        String productId = request.getParameter("id");
        productService.deleteProduct(productId);
        try {
            response.sendRedirect("/products");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
        String productId = request.getParameter("id");
        String productName = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        Product product = new Product(productId, productName, price, description);
        productService.updateProduct(productId, product);
        request.setAttribute("mess", "Đã cập nhập thành công sản phẩm: " + productId);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/update.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addNewProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = productService.findAll();
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/create.jsp");
        String productId = request.getParameter("id");
        for (int i = 0; i < products.size(); i++) {
            if (productId.equalsIgnoreCase(products.get(i).getProductId())) {
                request.setAttribute("mess", "Mã sản phẩm đã tồn tại, thêm chưa thành công");
                try {
                    dispatcher.forward(request, response);
                } catch (ServletException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return;
            }
        }
        String productName = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        productService.addNewProduct(new Product(productId, productName, price, description));

        request.setAttribute("mess", "Thêm thành công sản phẩm: " + productName);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListProductByName(HttpServletRequest request, HttpServletResponse response) {
        String productName = request.getParameter("product-name");
        List<Product> products = productService.findByProductName(productName);
        if (products.isEmpty()) {
            request.setAttribute("mess", "tên sản phẩm chưa có trong danh sách");
        } else {
            request.setAttribute("products", products);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
