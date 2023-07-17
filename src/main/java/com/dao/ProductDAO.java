package com.dao;

import com.hibernate.HibernateUltils;
import com.model.Product;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;

/**
 * @author Will
 * @project WebAssignment
 * @date 7/16/2023
 */
public class ProductDAO implements DAO<Product> {

    public static ProductDAO getInstance() {
        return new ProductDAO();
    }

    @Override
    public void insert(Product product) {
        Session session = HibernateUltils.getSessionFactory().openSession();
        try {
            org.hibernate.Transaction ts = session.beginTransaction();
            session.save(product);
            ts.commit();
            System.out.println("Done !!");
            session.close();
        } catch (HibernateException e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            //   session.flush();
            session.close();
        }
    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void delete(Product product) {

    }

    @Override
    public ArrayList<Product> selectAll() {
        Session session = HibernateUltils.getSessionFactory().openSession();
        return (ArrayList<Product>) session.createQuery(" FROM Product c").list();
    }

    @Override
    public Product selectByCondition(String condition) {
        return null;
    }

    @Override
    public ArrayList<Product> selectByTime() {
        return null;
    }

    public static void main(String[] args) {
        System.out.println(ProductDAO.getInstance().selectAll());
    }
}
