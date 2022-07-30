package com.codegym.service.impl;

import com.codegym.model.Product;
import com.codegym.repository.IProductRepository;
import com.codegym.repository.impl.ProductRepository;
import com.codegym.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository repository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return repository.findAll();
    }

    @Override
    public void addNewProduct(Product product) {
        repository.addNewProduct(product);
    }

    @Override
    public void updateProduct(String productId, Product product) {
        repository.updateProduct(productId, product);
    }

    @Override
    public void deleteProduct(String productId) {
        repository.deleteProduct(productId);
    }

    @Override
    public Product findByProductById(String productId) {
        return repository.findByProductById(productId);
    }

    @Override
    public List<Product> findByProductName(String productName) {
        return repository.findByProductName(productName);
    }
}
