<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My Cart - JayasriMart</title>
</head>
<body>
    <h2>Shopping Cart</h2>
    <a href="${pageContext.request.contextPath}/">Continue Shopping</a>
    <hr/>

    <c:if test="${empty cartItems}">
        <p>Your cart is empty!</p>
    </c:if>

    <c:if test="${not empty cartItems}">
        <table border="1" cellpadding="8" cellspacing="0">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Quantity</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                    <tr>
                        <td>${item.productName}</td>
                        <td>$${item.price}</td>
                        <td>${item.quantity}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>
