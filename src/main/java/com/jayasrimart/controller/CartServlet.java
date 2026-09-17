package com.jayasrimart.controller;

import com.jayasrimart.dao.CartDAO;
import com.jayasrimart.model.CartItem;
import com.jayasrimart.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/cart/*")
public class CartServlet extends HttpServlet {

    private CartDAO cartDAO;

    @Override
    public void init() throws ServletException {
        cartDAO = new CartDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (session != null) ? (User) session.getAttribute("user") : null;

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/auth/login");
            return;
        }

        List<CartItem> items = cartDAO.getCartItemsByUserId(user.getId());
        req.setAttribute("cartItems", items);
        req.getRequestDispatcher("/WEB-INF/views/cart.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        User user = (session != null) ? (User) session.getAttribute("user") : null;

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/auth/login");
            return;
        }

        String path = req.getPathInfo();
        if ("/add".equals(path)) {
            String productName = req.getParameter("productName");
            double price = Double.parseDouble(req.getParameter("price"));

            CartItem item = new CartItem();
            item.setUserId(user.getId());
            item.setProductName(productName);
            item.setPrice(price);
            item.setQuantity(1);

            cartDAO.addToCart(item);
            resp.sendRedirect(req.getContextPath() + "/cart");
        }
    }
}
