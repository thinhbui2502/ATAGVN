package service;

import model.Product;

import java.util.List;

public interface ProductService {
    public List<Product> showAllProduct();
    public void saveProduct(Product product);
}
