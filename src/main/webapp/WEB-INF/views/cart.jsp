<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.jayasrimart.model.CartItem" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Cart - JayasriMart</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #f4f4f4; }
        .total { font-weight: bold; font-size: 1.2em; margin-top: 15px; }
    </style>
</head>
<body>
    <h2>Shopping Cart</h2>
    <a href="index.jsp">Continue Shopping</a>
    <hr>

    <%
        List<CartItem> cartList = (List<CartItem>) request.getAttribute("cartList");
        double grandTotal = 0;
        if (cartList == null || cartList.isEmpty()) {
    %>
        <p>Your cart is empty!</p>
    <%
        } else {
    %>
        <table>
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (CartItem item : cartList) {
                        double subtotal = item.getPrice() * item.getQuantity();
                        grandTotal += subtotal;
                %>
                <tr>
                    <td><%= item.getProductName() %></td>
                    <td>$<%= item.getPrice() %></td>
                    <td><%= item.getQuantity() %></td>
                    <td>$<%= subtotal %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <div class="total">
            Total Amount: $<%= grandTotal %>
        </div>
    <%
        }
    %>
</body>
</html>
