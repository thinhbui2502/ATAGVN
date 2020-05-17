package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImp implements ProductService{
    static List<Product> productList;
    static {
        productList = new ArrayList<>();
        productList.add(new Product("PR001","IPHONE XS",8500000,21,"/img/phone1.png",1,"OK","SmartPhone"));
        productList.add(new Product("PR001","IPHONE XS",8500000,21,"/img/phone1.png",1,"OK","SmartPhone"));
        productList.add(new Product("PR001","IPHONE XS",8500000,21,"/img/phone1.png",1,"OK","SmartPhone"));
        productList.add(new Product("PR001","IPHONE XS",8500000,21,"/img/phone1.png",1,"OK","SmartPhone"));
        productList.add(new Product("PR001","IPHONE XS",8500000,21,"/img/phone1.png",1,"OK","SmartPhone"));
        productList.add(new Product("PR001","IPHONE XS",8500000,21,"/img/phone1.png",1,"OK","SmartPhone"));
    }
    @Override
    public List<Product> showAllProduct() {
        return productList;
    }
}
