package service;

import model.Product;

import java.util.List;

public interface ProductService {
    public List<Product> showAllProduct();

    //Hiện chi tiết sản phẩm:
    public Product getProductDetail(String productId);

}




