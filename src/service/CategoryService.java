package service;

import model.Category;

import java.sql.SQLException;
import java.util.List;

public interface CategoryService {
    public List<Category> getListCategory() throws SQLException;

}
