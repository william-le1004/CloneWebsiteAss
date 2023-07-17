package com.dao;

/**
 * @author Will
 * @project WebAssignment
 * @date 7/16/2023
 */
import com.model.Product;

import java.util.ArrayList;

public interface DAO<T> {
    public void insert(T t);

    public void update(T t);

    public void delete(T t);

    public ArrayList<T> selectAll();

    public Product selectByCondition(String condition);

    public ArrayList<T> selectByTime();


}
