package com.codegym.repository.impl;

import com.codegym.model.Product;
import com.codegym.repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product("sp001", "bánh snack khoai tây", 2000, "Thơm ngon"));
        products.add(new Product("sp002", "bánh bắp", 1500, "Hơi béo"));
        products.add(new Product("sp003", "kẹo mút chuppachup", 3000, "Ngọt lịm"));
        products.add(new Product("sp004", "kẹo big bapol", 1000, "Hương vị tuổi thơ"));
        products.add(new Product("sp005", "kem dừa", 5000, "Mát lạnh mùa hè"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void addNewProduct(Product product) {
        products.add(product);
    }

    @Override
    public void updateProduct(String productId, Product product) {
        for (int i = 0; i < products.size(); i++) {
            if(products.get(i).getProductId().equalsIgnoreCase(productId)) {
                products.set(i, product);
            }
        }
    }

    @Override
    public void deleteProduct(String productId) {
        for (Product product : products) {
            if(product.getProductId().equalsIgnoreCase(productId)) {
                products.remove(product);
                return;
            }
        }
    }

    @Override
    public Product findByProductById(String productId) {
        for (Product product : products) {
            if(product.getProductId().equalsIgnoreCase(productId)) {
                return product;
            }
        }
        return null;
    }

    @Override
    public List<Product> findByProductName(String productName) {
        List<Product> productsByName = new ArrayList<>();
        for (Product product : products) {
            if (product.getProductName().toLowerCase().contains(productName.toLowerCase())){
                productsByName.add(product);
            }
        }
        return productsByName;
    }
}
