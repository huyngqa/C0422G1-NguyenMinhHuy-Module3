package com.codegym.repository;

import com.codegym.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();
    void addNewProduct(Product product);
    void updateProduct(String productId, Product product);
    void deleteProduct(String productId);
    Product findByProductById(String productId);
    List<Product> findByProductName(String productName);
}
