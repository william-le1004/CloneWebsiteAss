package com.controller; /**
 * @author Will
 * @project WebAssFsoft
 * @date 7/17/2023
 */

import com.dao.ProductDAO;
import com.model.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Servlet", value = "/MyWishlist")
public class MyWishlist extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Product> products = ProductDAO.getInstance().selectAll();
        session.setAttribute("listProduct",products);
//        RequestDispatcher rd = request.getRequestDispatcher("view/header.jsp");
//        rd.forward(request,response);
        response.sendRedirect("view/page.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
