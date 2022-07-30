package com.codegym.service;

import com.codegym.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    void addNewProduct(Product product);
    void updateProduct(String productId, Product product);
    void deleteProduct(String productId);
    Product findByProductById(String productId);
    List<Product> findByProductName(String productName);
}
